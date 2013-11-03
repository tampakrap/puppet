class service::log::openrc {
  logrotate::rule { 'openrc':
    path         => '/var/log/rc.log',
    compress     => true,
    rotate       => '4',
    rotate_every => 'weekly',
    missingok    => true,
    ifempty      => false,
  }
}
