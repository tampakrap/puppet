class webservice::okupy (
  $domain = undef
) {

  if ! defined(Service::Portage::Tool['layman']) {
    service::portage::tool{ 'layman': }
  }

  if ! defined(Service::Portage::Tool['webapp_config']) {
    service::portage::tool{ 'webapp_config': }
  }

  if ! defined(Service::Portage::Make_conf::Useflag_group['apache']) {
    service::portage::make_conf::useflag_group { 'apache': }
  }

  if $::gentoo_tool_layman and $::gentoo_tool_webapp_config {
    layman { 'okupy':
      require => Package['app-portage/layman'],
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
      require    => Package['app-admin/webapp-config'],
    }
  }
}
