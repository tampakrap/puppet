class system::time (
  $timezone  = 'UTC'
  $localtime = 'UTC'
) {

  file { '/etc/localtime':
    target => "/usr/share/zoneinfo/$localtime",
    ensure => 'link',
  }

  file { '/etc/timezone':
    content => $timezone,
  }

  # TODO: /etc/conf.d/hwclock

}
