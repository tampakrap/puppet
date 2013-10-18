class webservice::okupy (
  $domain = undef
) {

  service::fact {
    'gentoo_tool_layman': value => true;
    'gentoo_tool_webapp_config': value => true;
    'useflag_group_apache': value => true;
  }

  if $::gentoo_tool_layman and $::gentoo_tool_webapp_config {
    layman { 'okupy':
      require => Package['app-portage/layman'],
    }

    #portage::package { 'www-apps/okupy':
    #  before   => Webapp[$domain],
    #  require  => Layman['okupy'],
    #  keywords => '**',
    #  ensure   => '9999',
    #  target   => 'okupy',
    #}

    #webapp { "${domain}":
    #  appname    => 'okupy',
    #  appversion => '9999',
    #  server     => 'apache',
    #  user       => 'apache',
    #  group      => 'apache',
    #  require    => Package['app-admin/webapp-config'],
    #}
  }
}
