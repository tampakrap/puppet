class service::log (
  $cronolog_ensure,
  $syslogng_ensure,
  $syslogng_mask,
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

  portage::package { 'app-admin/syslog-ng':
    ensure       => $syslogng_ensure,
    mask_version => $syslogng_mask,
  }

  service { 'syslog-ng':
    subscribe => Package['app-admin/syslog-ng'],
    ensure    => 'running',
    enable    => true,
  }

  # (temp) remove all syslog-* stuff from logrotate.d
  file { [
    '/etc/logrotage.d/syslog-auth',
    '/etc/logrotate.d/syslog-gerenic',
    '/etc/logrotate.d/syslog-hardened',
    '/etc/logrotate.d/syslog-mail',
    '/etc/logrotate.d/syslog-messages',
    '/etc/logrotate.d/syslog-news',
    '/etc/logrotate.d/syslog-system',
    '/etc/logrotate.d/syslog-user',
    '/etc/logrotate.d/syslog-ng',
  ]: ensure => absent }

}
