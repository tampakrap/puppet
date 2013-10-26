class system::users (
  $dastergon,
  $skiarxon,
  $tampakrap,
  $tomkap,
) {

  user { 'root':
    managehome => false,
    password   => '!',
    system     => true,
    uid        => '0',
    gid        => '0',
    ensure     => present,
    home       => '/root',
    groups     => [
      'root', 'bin', 'daemon', 'sys', 'adm', 'disk', 'wheel',
      'floppy', 'tape', 'video',
    ]
  }

  system::user {
    'dastergon': attrs => $dastergon;
    'skiarxon': attrs => $skiarxon;
    'tampakrap': attrs => $tampakrap;
    'tomkap': attrs => $tomkap;
  }

}
