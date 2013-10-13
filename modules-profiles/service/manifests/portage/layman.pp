class service::portage::layman {
  portage::package { 'layman':
    ensure => 'latest',
  }
}
