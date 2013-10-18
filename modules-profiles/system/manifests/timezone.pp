class system::timezone (
  $timezone = 'UTC'
) {

  file { '/etc/localtime':
    target => "/usr/share/zoneinfo/$timezone",
    ensure => 'link',
  }

  file { '/etc/timezone':
    content => $timezone,
  }

}
