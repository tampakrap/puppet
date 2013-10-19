class service::mail {

  postfix::config {
    'queue_directory': content => '/var/spool/postfix';
    'command_directory': content => '/usr/sbin';
    'daemon_directory': content => '/usr/libexec/postfix';
    'data_directory': content => '/var/lib/postfix';
    'mail_owner': content => 'postfix';
    'mydomain': content => 'pebkac.gr';
    'myorigin': content => '$mydomain';
    'mydestination': content => '$myhostname, localhost.$mydomain, localhost';
    'unknown_local_recipient_reject_code': content => '550';
    'smtpd_sender_restrictions': content => 'check_recipient_access pcre:/etc/postfix/blacklisted_recipient.pcre';
    'alias_maps': content => 'hash:/etc/aliases';
    'alias_database': content => 'hash:/etc/aliases';
    'home_mailbox': content => '.maildir/';
    'debug_peer_level': content => '2';
    'sendmail_path': content => '/usr/sbin/sendmail';
    'newaliases_path': content => '/usr/bin/newaliases';
    'mailq_path': content => '/usr/bin/mailq';
    'setgid_group': content => 'postdrop';
    'sample_directory': content => '/etc/postfix';
    'tls_random_source': content => 'dev:/dev/urandom';
    'tls_random_exchange_name': content => '/var/lib/postfix/tls_random_exchange.tmp';
    'default_filter_nexthop': content => '$myhostname';
  }

}
