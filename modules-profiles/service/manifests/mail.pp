class service::mail (
  $queue_directory   = '/var/spool/postfix',
  $command_directory = '/usr/sbin',
  $daemon_directory  = '/usr/libexec/postfix',
  $data_directory    = '/var/lib/postfix',
  $mail_owner        = 'postfix',
  $mydomain          = undef,
  $mydestination     = '$myhostname, localhost.$mydomain, localhost',
  $unkown_local_recipient_reject_code = '550',
  $alias_maps        = 'hash:/etc/aliases',
  $alias_database    = 'hash:/etc/aliases',
  $home_mailbox      = '.maildir/',
  $debug_peer_level  = '2',
  $sendmail_path     = '/usr/sbin/sendmail',
  $newaliases_path   = '/usr/bin/newaliases',
  $mailq_path        = '/usr/bin/mailq',
  $setgid_group      = 'postdrop',
  $sample_directory  = '/etc/postfix',
  $default_filter_nexthop = '$myhostname',

) {

  include postfix
  postfix::config {
    'queue_directory': value => $queue_directory;
    'command_directory': value => $command_directory;
    'daemon_directory': value => $daemon_directory;
    'data_directory': value => $data_directory;
    'mail_owner': value => $mail_owner;
    'mydomain': value => $mydomain;
    'mydestination': value => $mydestination;
    'unknown_local_recipient_reject_code': value => $unknown_local_recipient_reject_code;
    'alias_maps': value => $alias_maps;
    'alias_database': value => $alias_database;
    'home_mailbox': value => $home_mailbox;
    'debug_peer_level': value => $debug_peer_level;
    'sendmail_path': value => $sendmail_path;
    'newaliases_path': value => $newaliases_path;
    'mailq_path': value => $mailq_path;
    'setgid_group': value => $setgid_group;
    'sample_directory': value => $sample_directory;
    'default_filter_nexthop': value => $default_filter_nexthop;
  }

}
