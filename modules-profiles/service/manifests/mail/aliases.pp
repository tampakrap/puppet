class service::mail::aliases (
  $root,
) {

  $alias_database = $service::mail::postfix::alias_database
  $aliases_file = inline_template("<%= @alias_database.split(':')[1] %>")

  exec { 'newaliases':
    command     => $service::mail::postfix::newaliases_path,
    refreshonly => true,
  }

  mailalias { 'root':
    recipient => $root,
    target    => $aliases_file,
    notify    => Exec['newaliases'],
  }

}
