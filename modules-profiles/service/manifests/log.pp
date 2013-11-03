class service::log (
  $cronolog_ensure,
  $syslog_ng_ensure,
) {

  include logrotate

  if defined(package['httpd']) {
    package { 'app-admin/cronolog': ensure => $cronolog_ensure }

    logrotate::rule { 'apache2':
      path          => '/var/log/apache2/*.log',
      postrotate    => '/etc/init.d/apache2 reload > /dev/null 2>&1 || true',
      missingok     => true,
      sharedscripts => true,
      ifempty       => false,
    }
  }

  package { 'app-admin/syslog-ng': ensure => $syslog_ng_ensure }

  file { [
    '/etc/cron.daily/logrotate',
    '/etc/cron.hourly/logrotate',
  ]:
    ensure => absent
  }

}
