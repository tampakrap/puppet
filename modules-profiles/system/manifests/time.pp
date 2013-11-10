class system::time (
  $localtime,
  $clock,
  $clock_hctosys,
  $clock_systohc,
  $clock_args = [],
  $timezone_data_ensure,
  $eselect_timezone,
  $eselect_timezone_ensure,
  $eselect_timezone_keywords,
) {

  include ntp

  portage::package {
    'sys-libs/timezone-data':
      before => File['/etc/localtime'],
      ensure => $timezone_data_ensure;
    'app-admin/eselect-timezone':
      before   => Eselect['timezone'],
      keywords => $eselect_timezone_keywords,
      target   => 'portage',
      ensure   => $eselect_timezone_ensure;
  }

  eselect { 'timezone': set => $eselect_timezone }

  file {
    '/etc/localtime':
      target => "/usr/share/zoneinfo/$localtime",
      ensure => 'link';
    '/etc/conf.d/hwclock':
      content => template('system/hwclock.erb'),
      notify  => Service['hwclock'];
  }

  if $::is_virtual == 'true' {
    $enabled = false
  } else {
    $enabled = true
  }

  service {
    'hwclock':
      ensure => $enabled ? { true => running, false => stopped },
      enable => $enabled;
    'ntp-client':
      subscribe => File['/etc/ntp.conf'],
      ensure    => 'running',
      enable    => true;
  }

}
