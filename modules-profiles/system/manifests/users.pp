class system::users (
  $dastergon = { name => 'dastergon', ensure => 'absent' },
  $skiarxon = { name => 'skiarxon', ensure => 'absent' },
  $tampakrap = { name => 'tampakrap', ensure => 'absent' },
  $tomkap = { name => 'tomkap', ensure => 'absent' },
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

  system::user { [
    $dastergon[name],
    $skiarxon[name],
    $tampakrap[name],
    $tomkap[name],
  ]:
    attrs => $name
  }

}
