if ! defined(Class['Service::Portage::Layman']) {
  class service::portage::layman {
    portage::package { 'app-portage/layman':
      ensure => 'latest',
      before => Portage::Makeconf['source /var/lib/layman/make.conf'],
    }

    portage::makeconf { 'source /var/lib/layman/make.conf': }
  }
}
