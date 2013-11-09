class service::mail::postfix (
  $queue_directory,
  $command_directory,
  $daemon_directory,
  $data_directory,
  $mail_owner,
  $myhostname,
  $mydomain,
  $mydestination,
  $myorigin,
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
  $inet_interfaces,
  $inet_protocols,
  $virtual_alias_domains,
) {

  include ::postfix

  postfix::maincf {
    'queue_directory': content => $queue_directory;
    'command_directory': content => $command_directory;
    'daemon_directory': content => $daemon_directory;
    'data_directory': content => $data_directory;
    'mail_owner': content => $mail_owner;
    'myhostname': content => $myhostname;
    'mydomain': content => $mydomain;
    'mydestination': content => $mydestination;
    'myorigin': content => $myorigin;
    'unknown_local_recipient_reject_code': content => $unknown_local_recipient_reject_code;
    'alias_database': content => $alias_database;
    'home_mailbox': content => $home_mailbox;
    'debug_peer_level': content => $debug_peer_level;
    'sendmail_path': content => $sendmail_path;
    'newaliases_path': content => $newaliases_path;
    'mailq_path': content => $mailq_path;
    'setgid_group': content => $setgid_group;
    'sample_directory': content => $sample_directory;
    'default_filter_nexthop': content => $default_filter_nexthop;
    'inet_interfaces': content => $inet_interfaces;
    'inet_protocols': content => $inet_protocols;
    'virtual_alias_domains': content => $virtual_alias_domains;
    'virtual_alias_maps': content => $virtual_alias_maps;
  }

}
