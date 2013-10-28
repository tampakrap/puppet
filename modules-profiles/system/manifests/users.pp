class system::users (
  $amy,
  $atma,
  $dastergon,
  $differentreality,
  $etern4l,
  $feedward,
  $hwoarang,
  $kokeroulis,
  $liquidxd,
  $lourdas_v,
  $mgorny,
  $miska,
  $moloch,
  $nikhatzi,
  $parapente,
  $pktoss,
  $psomas,
  $pvidalis,
  $skiarxon,
  $tampakrap,
  $tomkap,
  $tzorvas,
  $wired,
  $yz250,
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
    'amy': attrs => $amy;
    'atma': attrs => $atma;
    'dastergon': attrs => $dastergon;
    'differentreality': attrs => $differentreality;
    'etern4l': attrs => $etern4l;
    'feedward': attrs => $feedward;
    'hwoarang': attrs => $hwoarang;
    'kokeroulis': attrs => $kokeroulis;
    'liquidxd': attrs => $liquidxd;
    'lourdas_v': attrs => $lourdas_v;
    'mgorny': attrs => $mgorny;
    'miska': attrs => $miska;
    'moloch': attrs => $moloch;
    'nikhatzi': attrs => $nikhatzi;
    'parapente': attrs => $parapente;
    'pktoss': attrs => $pktoss;
    'psomas': attrs => $psomas;
    'pvidalis': attrs => $pvidalis;
    'skiarxon': attrs => $skiarxon;
    'tampakrap': attrs => $tampakrap;
    'tomkap': attrs => $tomkap;
    'tzorvas': attrs => $tzorvas;
    'wired': attrs => $wired;
    'yz250': attrs => $yz250;
  }

}
