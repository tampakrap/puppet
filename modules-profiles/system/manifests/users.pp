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
    'amy': attrs => hiera_array(system::users::amy);
    'atma': attrs => hiera_array(system::users::atma);
    'dastergon': attrs => hiera_array(system::users::dastergon);
    'differentreality': attrs => hiera_array(system::users::differentreality);
    'etern4l': attrs => hiera_array(system::users::etern4l);
    'feedward': attrs => hiera_array(system::users::feedward);
    'hwoarang': attrs => hiera_array(system::users::hwoarang);
    'kokeroulis': attrs => hiera_array(system::users::kokeroulis);
    'liquidxd': attrs => hiera_array(system::users::liquidxd);
    'lourdas_v': attrs => hiera_array(system::users::lourdas_v);
    'mgorny': attrs => hiera_array(system::users::mgorny);
    'miska': attrs => hiera_array(system::users::miska);
    'moloch': attrs => hiera_array(system::users::moloch);
    'nikhatzi': attrs => hiera_array(system::users::nikhatzi);
    'parapente': attrs => hiera_array(system::users::parapente);
    'pktoss': attrs => hiera_array(system::users::pktoss);
    'psomas': attrs => hiera_array(system::users::psomas);
    'pvidalis': attrs => hiera_array(system::users::pvidalis);
    'skiarxon': attrs => hiera_array(system::users::skiarxon);
    'tampakrap': attrs => hiera_array(system::users::tampakrap);
    'tomkap': attrs => hiera_array(system::users::tomkap);
    'tzorvas': attrs => hiera_array(system::users::tzorvas);
    'wired': attrs => hiera_array(system::users::wired);
    'yz250': attrs => hiera_array(system::users::yz250);
  }

}
