class service::log::syslog_ng {
  logrotate::rule { 'syslog-ng':
    path          => '/var/log/messages',
    missingok     => true,
    postrotate    => '/etc/init.d/syslog-ng reload > /dev/null 2>&1 || true',
    sharedscripts => true,
  }
}
