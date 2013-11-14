class system::portage (
  $gentoolkit_ensure,
  $gentoolkit_dev_ensure,
  $portage_utils_ensure,
  $genlop_ensure
) {

  include ::portage
  include system::portage::make_conf
  include system::portage::sync

  portage::package {
    'app-portage/gentoolkit': ensure => $gentoolkit_ensure;
    'app-portage/gentoolkit-dev': ensure => $gentoolkit_dev_ensure;
    'app-portage/portage-utils': ensure => $portage_utils_ensure;
    'app-portage/genlop': ensure => $genlop_ensure;
  }

}
