class service::log::apache {
  logrotate::rule { 'apache2':
    path          => '/var/log/apache2/*.log',
    postrotate    => '/etc/init.d/apache2 reload > /dev/null 2>&1 || true',
    missingok     => true,
    sharedscripts => true,
    ifempty       => false,
  }
}
