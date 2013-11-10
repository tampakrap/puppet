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
    $sites = "/var/www/$name/htdocs/$directory/sites"
    $url = "http://${name}/${directory}"
  } else {
    $sites = "/var/www/$name/htdocs/sites"
    $url = "http://${name}"
  }

  webapp { "${name}::/${directory}":
    appname    => 'drupal',
    appversion => $drupal::ensure,
    require    => Portage::Package[$drupal::pkg_name],
  }
  ->
  vcsrepo {
    "/var/www/$name/$name":
      provider => 'git',
      source   => $repo;
    "$sites/all/themes":
      provider => 'git',
      source   => $theme;
  }
  ->
  file {
    "$sites/all/modules":
      target => "/var/www/$name/$name/modules",
      ensure => 'link';
    "$sites/all/plugins":
      target => "/var/www/$name/$name/plugins",
      ensure => 'link';
  }

  cron { "$url cron":
    ensure  => present,
    command => "wget -O - -q -t 1 $url/cron.php",
    minute  => interval(1, 60),
    require => Webapp[$webapp_name],
  }

}
