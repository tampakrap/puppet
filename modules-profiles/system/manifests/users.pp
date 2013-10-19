class system::users (
  $dastergon = false,
  $skiarxon  = false,
  $tampakrap = false,
  $tomkap    = false,
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

  system::user { 'dastergon': attrs => $dastergon }
  system::user { 'skiarxon': attrs => $skiarxon }
  system::user { 'tampakrap': attrs => $tampakrap }
  system::user { 'tomkap': attrs => $tomkap }

}
