class service::mail (
  $queue_directory,
  $command_directory,
  $daemon_directory,
  $data_directory,
  $mail_owner,
  $myhostname,
  $mydomain,
  $mydestination,
  $unknown_local_recipient_reject_code,
  $alias_database,
  $home_mailbox,
  $debug_peer_level,
  $sendmail_path,
  $newaliases_path,
  $mailq_path,
  $setgid_group,
  $sample_directory,
  $default_filter_nexthop,
  $inet_protocols,
) {

  include postfix

  postfix::config {
    'queue_directory': value => $queue_directory;
    'command_directory': value => $command_directory;
    'daemon_directory': value => $daemon_directory;
    'data_directory': value => $data_directory;
    'mail_owner': value => $mail_owner;
    'myhostname': value => $myhostname;
    'mydomain': value => $mydomain;
    'mydestination': value => $mydestination;
    'unknown_local_recipient_reject_code': value => $unknown_local_recipient_reject_code;
    'alias_database': value => $alias_database;
    'home_mailbox': value => $home_mailbox;
    'debug_peer_level': value => $debug_peer_level;
    'sendmail_path': value => $sendmail_path;
    'newaliases_path': value => $newaliases_path;
    'mailq_path': value => $mailq_path;
    'setgid_group': value => $setgid_group;
    'sample_directory': value => $sample_directory;
    'default_filter_nexthop': value => $default_filter_nexthop;
    'inet_protocols': value => $inet_protocols;
  }

}
