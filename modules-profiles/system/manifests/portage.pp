class system::portage (
  $gentoolkit_ensure,
  $gentoolkit_dev_ensure,
  $portage_utils_ensure,
  $eselect_ruby_ensure,
  $eselect_python_ensure,
  $gcc_config_ensure,
) {

  include ::portage
  include system::portage::make_conf
  include system::portage::eselect
  include system::portage::sync

  portage::package {
    'app-portage/gentoolkit': ensure => $gentoolkit_ensure;
    'app-portage/gentoolkit-dev': ensure => $gentoolkit_dev_ensure;
    'app-portage/portage-utils': ensure => $portage_utils_ensure;
    'app-admin/eselect-ruby': ensure => $eselect_ruby_ensure;
    'app-admin/eselect-python': ensure => $eselect_python_ensure;
    'app-admin/eselect-timezone':
      keywords => $eselect_timezone_keywords,
      target   => 'portage',
      ensure   => $eselect_timezone_ensure;
    'sys-devel/gcc-config': ensure => $gcc_config_ensure;
  }

}
