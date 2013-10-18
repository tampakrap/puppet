class system::time (
  $timezone      = 'UTC',
  $localtime     = 'UTC',
  $clock         = 'UTC',
  $clock_hctosys = 'NO',
  $clock_systohc = 'NO',
  $clock_args,
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
  }

}
