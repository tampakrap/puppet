class webservice::okupy (
  $domain = undef
) {

  include service::portage::layman

  if ! defined(Class['Service::Portage::Make_conf::Use_apache']) {
    include service::portage::make_conf::use_apache
  }

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
