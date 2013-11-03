class service::log (
  $cronolog_ensure,
  $syslog_ng_ensure,
) {

  include logrotate
  include logrotate::conf

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

  logrotate::rule { 'elog-save-summary':
    path          => '/var/log/portage/elog/summary.log',
    missingok     => true,
    create        => false,
    delaycompress => true,
    su            => true,
    su_owner      => 'portage',
    su_group      => 'portage',
  }

  logrotate::rule { 'openrc':
    path         => '/var/log/rc.log',
    compress     => true,
    rotate       => '4',
    rotate_every => 'weekly',
    missingok    => true,
    ifempty      => false,
  }

  package { 'app-admin/syslog-ng': ensure => $syslog_ng_ensure }

  file { [
    '/etc/cron.daily/logrotate',
    '/etc/cron.hourly/logrotate',
  ]:
    ensure => absent
  }

}
