class service::mail::aliases (
  $root,
) {

  $alias_database = $service::mail::postfix::alias_database
  $aliases_file = inline_template("<%= @alias_database.split(':')[1] %>")

  exec { 'newaliases':
    command     => $service::mail::postfix::newaliases_path,
    refreshonly => true,
  }

  if $::relayhost {
    $root_recipient = $root
  } else {
    $root_recipient = "root@eyedea.$::domain"
  }

  mailalias { 'root':
    recipient => $root_recipient,
    target    => $aliases_file,
    notify    => Exec['newaliases'],
  }

  mailalias { [
    'postmaster',
    'adm',
    'bin',
    'daemon',
    'exim',
    'lp',
    'mail',
    'named',
    'nobody',
    'postfix',
    'ftp',
    'hostmaster',
    'noc',
    'security',
    'usenet',
    'uucp',
    'webmaster',
  ]:
    recipient => 'root',
    target    => $aliases_file,
    notify    => Exec['newaliases'],
  }

  mailalias { [
    'MAILER-DAEMON',
    'abuse',
    'news',
    'www',
  ]:
    recipient => 'postmaster',
    target    => $aliases_file,
    notify    => Exec['newaliases'],
  }

  mailalias { 'decode':
    recipient => '/dev/null',
    target    => $aliases_file,
    notify    => Exec['newaliases'],
  }

}
