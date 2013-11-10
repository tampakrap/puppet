define webservice::drupal (
  $directory,
  $repo,
  $theme,
) {

  include ::drupal
  include webservice
  include system::language::php
  include system::portage::webapp_config

  if $directory {
    $docroot = "/var/www/$name/htdocs/$directory"
    $sites = "$docroot/sites"
    $url = "http://${name}/${directory}"
  } else {
    $docroot = "/var/www/$name/htdocs"
    $sites = "$docroot/sites"
    $url = "http://${name}"
  }

  webapp { "${name}::/${directory}":
    appname    => 'drupal',
    appversion => $drupal::ensure,
    require    => Portage::Package[$drupal::pkg_name],
  }
  ->
  file { "$sites/all/themes": ensure => directory }
  ->
  vcsrepo {
    "/var/www/$name/$name":
      ensure   => present,
      provider => 'git',
      source   => $repo;
    "$sites/all/themes/$name":
      ensure   => present,
      provider => 'git',
      source   => $theme;
  }
  ->
  file {
    "$sites/all/modules":
      target => "/var/www/$name/$name/modules",
      ensure => 'link';
    "$sites/all/libraries":
      target => "/var/www/$name/$name/libraries",
      ensure => 'link';
  }

  cron { "$name cron":
    ensure  => present,
    command => "wget -O - -q -t 1 $url/cron.php",
    minute  => interval(1, 60),
    require => Webapp["${name}::/${directory}"],
  }

  apache::vhost { $name:
    ip             => $::ipaddress,
    port           => '80',
    docroot        => $docroot,
    serveradmin    => 'root@gentoo-el.org',
    scriptalias    => "/var/www/${name}/cgi-bin",
    directoryindex => 'index.php',
    priority       => '10',
  }

}
