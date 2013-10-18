class system::time (
  $timezone      = 'UTC',
  $localtime     = 'UTC',
  $clock         = 'UTC',
  $clock_hctosys = 'NO',
  $clock_systohc = 'NO',
  $clock_args    = [],
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

  if $::is_virtual == true {
    $enabled = false
  } else {
    $enabled = true
  }

  service { 'hwclock':
    name       => '/etc/init.d/hwclock',
    ensure     => $enabled ? { true => running, false => stopped },
    enable     => $enabled,
  }

}
