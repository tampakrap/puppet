class webservice::okupy (
  $domain = undef
) {

  include service::portage::layman

  layman { 'okupy':
    require => Portage::Package['app-portage/layman']
  }

  portage::makeconf { 'source /var/lib/layman/make.conf': }

  portage::package { 'www-apps/okupy':
    before  => Webapp[$domain],
    require => [
      Layman['okupy'],
      Portage::Makeconf['source /var/lib/layman/make.conf'],
    ],
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
