class system::portage {
  include ::portage
  include system::portage::make_conf
  include system::portage::eselect
  include system::portage::sync

  package { [
    'app-portage/gentoolkit',
    'app-portage/gentoolkit-dev',
    'app-portage/portage-utils',
  ]:
    ensure => present
  }

}
