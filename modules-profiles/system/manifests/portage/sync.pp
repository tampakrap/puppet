class system::portage::sync {

  if $::virtual == 'vserver' {
    $command = '/usr/bin/layman -S > /dev/null && /usr/bin/eix-update > /dev/null'
  } else {
    $command = '/usr/bin/eix-sync > /dev/null'
  }

  cron { 'eix_layman_sync':
    command => $command,
    user    => 'root',
    hour    => [5, 17],
    minute  => interval(1, 60),
  }

}
