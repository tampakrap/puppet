class system::man (
  $man_ensure,
  $man_pages_ensure,
) {

  package { 'sys-apps/man': ensure => $man_ensure }
  package { 'sys-apps/man-pages': ensure => $man_pages_ensure }

  cron { 'makewhatis':
    ensure => 'present',
    command => 'exec nice makewhatis -u',
    hour    => '5',
    minute  => '43',
    require => Package['sys-apps/man'],
  }

  file { '/etc/cron.daily/makewhatis': ensure => absent }

}
