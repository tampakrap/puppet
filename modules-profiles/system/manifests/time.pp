class system::time (
  $timezone,
  $localtime,
  $clock,
  $clock_hctosys,
  $clock_systohc,
  $clock_args = [],
  $timezone_data_ensure,
) {

  file { '/etc/localtime':
    target => "/usr/share/zoneinfo/$localtime",
    ensure => 'link',
  }

  file { '/etc/timezone':
    content => $timezone,
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

  package { 'sys-libs/timezone-data': ensure => $timezone_data_ensure }

}
