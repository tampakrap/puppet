class system::portage::sync {

  if $::virtual == 'vserver' {
    $command = '/usr/bin/layman -S && /usr/bin/eix-update'
  } else {
    $command = '/usr/bin/eix-sync'
  }

  cron { 'eix_layman_sync':
    command => $command,
    user    => 'root',
    hour    => [5, 17],
    minute  => interval(1, 60),
  }

}
