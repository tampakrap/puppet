class service::portage::layman {
  portage::package { 'app-portage/layman':
    ensure => 'latest',
  }
}
