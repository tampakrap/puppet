class webservice::okupy (
  $domain,
) {

  include webservice
  include system::portage::layman
  include system::portage::webapp_config

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
