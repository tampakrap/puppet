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
    groups     => [
      'root', 'bin', 'daemon', 'sys', 'adm', 'disk', 'wheel',
      'floppy', 'tape', 'video',
    ]
  }

  system::user { 'dastergon': attrs => $dastergon }
  system::user { 'skiarxon': attrs => $skiarxon }
  system::user { 'tampakrap': attrs => $tampakrap }
  system::user { 'tomkap': attrs => $tomkap }

}
