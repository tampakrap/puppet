class service::mail {

  include postfix
  postfix::config {
    'queue_directory': value => '/var/spool/postfix';
    'command_directory': value => '/usr/sbin';
    'daemon_directory': value => '/usr/libexec/postfix';
    'data_directory': value => '/var/lib/postfix';
    'mail_owner': value => 'postfix';
    'mydomain': value => 'pebkac.gr';
    'myorigin': value => '$mydomain';
    'mydestination': value => '$myhostname, localhost.$mydomain, localhost';
    'unknown_local_recipient_reject_code': value => '550';
    'smtpd_sender_restrictions': value => 'check_recipient_access pcre:/etc/postfix/blacklisted_recipient.pcre';
    'alias_maps': value => 'hash:/etc/aliases';
    'alias_database': value => 'hash:/etc/aliases';
    'home_mailbox': value => '.maildir/';
    'debug_peer_level': value => '2';
    'sendmail_path': value => '/usr/sbin/sendmail';
    'newaliases_path': value => '/usr/bin/newaliases';
    'mailq_path': value => '/usr/bin/mailq';
    'setgid_group': value => 'postdrop';
    'sample_directory': value => '/etc/postfix';
    'tls_random_source': value => 'dev:/dev/urandom';
    'tls_random_exchange_name': value => '/var/lib/postfix/tls_random_exchange.tmp';
    'default_filter_nexthop': value => '$myhostname';
  }

}
