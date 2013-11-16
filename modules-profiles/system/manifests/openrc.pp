class system::openrc (
  $ensure,
) {

  portage::package { 'sys-apps/openrc': ensure => $ensure }

}
