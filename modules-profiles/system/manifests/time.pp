class system::time (
  $localtime,
  $timezone,
) {
  include ntp

  package { 'timezone': ensure => $timezone }

  file { '/etc/localtime':
    target  => "/usr/share/zoneinfo/$localtime",
    ensure  => 'link',
    require => Package['timezone'],
  }
}
