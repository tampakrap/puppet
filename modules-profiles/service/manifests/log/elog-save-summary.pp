class service::log::elog_save_summary {
  logrotate::rule { 'elog-save-summary':
    path          => '/var/log/portage/elog/summary.log',
    missingok     => true,
    create        => false,
    delaycompress => true,
    su            => true,
    su_owner      => 'portage',
    su_group      => 'portage',
  }
}
