class system::man (
  $man_ensure,
  $man_pages_ensure,
) {

  package {
    'sys-apps/man': ensure => $man_ensure;
    'sys-apps/man-pages': ensure => $man_pages_ensure;
  }

  cron { 'makewhatis':
    ensure => 'present',
    command => 'exec nice makewhatis -u',
    hour    => interval(1, 24),
    minute  => interval(1, 60),
    require => Package['sys-apps/man'],
  }

  file { '/etc/cron.daily/makewhatis': ensure => absent }

}
