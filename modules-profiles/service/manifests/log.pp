class service::log (
  $cronolog_ensure,
  $syslogng_ensure,
) {

  include logrotate
  include logrotate::conf

  include service::log::elog_save_summary
  include service::log::openrc
  include service::log::syslog_ng

  if defined(package['httpd']) {
    package { 'app-admin/cronolog': ensure => $cronolog_ensure }
    include service::log::apache
  }

  file { [
    '/etc/cron.daily/logrotate',
    '/etc/cron.hourly/logrotate',
  ]:
    ensure => absent
  }

  package { 'app-admin/syslog-ng': ensure => $syslogng_ensure }

  service { 'syslog-ng':
    subscribe => Package['app-admin/syslog-ng'],
    ensure    => 'running',
    enable    => true,
  }

}
