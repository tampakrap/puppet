class system::process (
  $procps_ensure,
  $htop_ensure,
) {

  package {
    'sys-process/procps': ensure => $procps_ensure;
    'sys-process/htop': ensure => $htop_ensure;
  }

}
