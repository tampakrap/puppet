class system::users (
  $dastergon = { name => 'dastergon' },
  $skiarxon = { name => 'skiarxon' },
  $tampakrap = { name => 'tampakrap' },
  $tomkap = { name => 'tomkap' },
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

  system::user { $dastergon[name]: attrs => $dastergon }
  system::user { $skiarxon[name]: attrs => $skiarxon }
  system::user { $tampakrap[name]: attrs => $tampakrap }
  system::user { $tomkap[name]: attrs => $tomkap }

}
