define webservice::drupal (
  $target       = '',
  $directory    = '',
  $repo_url     = '',
  $repo_target  = '',
  $theme_url    = '',
  $theme_target = '',
) {

  include ::drupal
  include webservice
  include system::language::php
  include system::portage::webapp_config

  if $target {
    $real_target = $target
  } else {
    $real_target = $name
  }

  if $directory {
    $docroot = "/var/www/$real_target/htdocs/$directory"
    $sites = "$docroot/sites"
    $url = "http://$name/$directory"
  } else {
    $docroot = "/var/www/$real_target/htdocs"
    $sites = "$docroot/sites"
    $url = "http://$name"
  }

  if ! defined(Webapp["${real_target}::/${directory}"]) {
    webapp { "${real_target}::/${directory}":
      appname    => 'drupal',
      appversion => $drupal::ensure,
      require    => Portage::Package[$drupal::pkg_name],
    }
    ->
    file { ["$sites/all", "$sites/default"]:
      ensure  => absent,
      recurse => true,
      purge   => true,
      force   => true,
    }
  }

  file { "$sites/$name":
    require => Webapp["${real_target}::${directory}"],
    ensure => directory
  }
  ->
  file {
    "$sites/$name/files":
      ensure => directory,
      owner  => 'apache',
      group  => 'root',
      mode   => 0755;
    "$sites/$name/settings.php":
      ensure => file,
      owner  => 'root',
      group  => 'apache',
      mode   => 0640;
    "$sites/$name/default.settings.php": ensure => absent;
  }

  if $repo_url and ! defined(Vcsrepo["/var/www/$real_target/$repo_target"]) {
    vcsrepo { "/var/www/$real_target/$repo_target":
      require  => File["$sites/$name"],
      ensure   => present,
      provider => 'git',
      source   => $repo_url,
    }
    ->
    file {
      "$sites/$name/modules":
        target => "/var/www/$real_target/$repo_target/modules",
        ensure => 'link';
      "$sites/$name/libraries":
        target => "/var/www/$real_target/$repo_target/libraries",
        ensure => 'link';
    }
  }

  if $theme_url {
    vcsrepo { "$sites/$name/themes/$theme_target":
      require  => File["$sites/$name"],
      ensure   => present,
      provider => 'git',
      source   => $theme_url,
    }
  }

  cron { "$name cron":
    ensure  => present,
    command => "wget -O - -q -t 1 $url/cron.php",
    minute  => interval(1, 60),
  }

  apache::vhost { $name:
    ip             => $::ipaddress,
    port           => '80',
    docroot        => $docroot,
    serveradmin    => "root@${::domain}",
    scriptalias    => "/var/www/$real_target/cgi-bin",
    directoryindex => 'index.php',
    priority       => '10',
    require        => Webapp["${real_target}::/${directory}"],
  }

}
