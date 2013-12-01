class service::log::quassel {
  logrotate::rule { 'quassel':
    path          => '/var/log/quassel.log',
    rotate        => '4',
    rotate_every  => 'weekly',
    delaycompress => true,
    copytruncate  => true,
    missingok     => true,
    ifempty       => false,
  }
}
