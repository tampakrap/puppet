class webservice::okupy (
  $domain = undef
) {

  include service::portage::layman

  layman { 'okupy':
    require => Portage::Package['app-portage/layman']
  }

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
