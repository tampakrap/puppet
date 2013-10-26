class service::mail::aliases (
  $aliases_file,
  $root,
) {

  include postfix

  exec { 'newaliases':
    command     => '/usr/bin/newaliases',
    refreshonly => true,
  }

  mailalias { 'root':
    recipient => $root,
    target    => $postfix::aliases_file,
    notify    => Exec['newaliases'],
  }

}
