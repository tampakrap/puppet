class webservice::okupy (
  $domain = undef
) {

  if ! defined(Class['service::portage::layman']) {
    include service::portage::layman
  }

  if ! defined(Class['service::portage::webapp_config']) {
    include service::portage::webapp_config
  }

  if ! defined(Class['Service::Portage::Make_conf::Use_apache']) {
    include service::portage::make_conf::use_apache
  }

  layman { 'okupy':
    require => Portage::Package['app-portage/layman']
  }

  portage::package { 'www-apps/okupy':
    before   => Webapp[$domain],
    require  => Layman['okupy'],
    keywords => '**',
    ensure   => '9999',
    target   => 'okupy',
  }

  webapp { "${domain}":
    appname    => 'okupy',
    appversion => '9999',
    server     => 'apache',
    user       => 'apache',
    group      => 'apache',
  }
}
