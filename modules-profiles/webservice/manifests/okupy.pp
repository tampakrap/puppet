class webservice::okupy (
  $domain = undef
) {

  layman { 'okupy': }

  portage::package { 'www-apps/okupy':
    before  => Webapp[$domain],
    require => Layman['okupy'],
    ensure  => '9999',
  }

  webapp { "${domain}":
    appname    => 'django',
    appversion => '9999',
    server     => 'apache',
    user       => 'apache',
    group      => 'apache',
  }
}
