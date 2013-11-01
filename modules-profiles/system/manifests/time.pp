class system::time (
  $localtime,
  $clock,
  $clock_hctosys,
  $clock_systohc,
  $clock_args = [],
  $timezone_data_ensure,
) {

  include ntp

  package { 'sys-libs/timezone-data':
    before => File['/etc/localtime'],
    ensure => $timezone_data_ensure,
  }

  file { '/etc/localtime':
    target => "/usr/share/zoneinfo/$localtime",
    ensure => 'link',
  }

  file { '/etc/conf.d/hwclock':
    content => template('system/hwclock.erb'),
    notify  => Service['hwclock'],
  }

  if $::is_virtual == 'true' {
    $enabled = false
  } else {
    $enabled = true
  }

  service { 'hwclock':
    ensure => $enabled ? { true => running, false => stopped },
    enable => $enabled,
  }

  service { 'ntp-client':
    require => Class['ntp'],
    ensure  => 'running',
    enable  => true,
  }

}
