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

  defined_type::user {
    'amy': attrs => hiera_hash(system::users::amy);
    'atma': attrs => hiera_hash(system::users::atma);
    'dastergon': attrs => hiera_hash(system::users::dastergon);
    'differentreality': attrs => hiera_hash(system::users::differentreality);
    'etern4l': attrs => hiera_hash(system::users::etern4l);
    'feedward': attrs => hiera_hash(system::users::feedward);
    'hwoarang': attrs => hiera_hash(system::users::hwoarang);
    'kokeroulis': attrs => hiera_hash(system::users::kokeroulis);
    'liquidxd': attrs => hiera_hash(system::users::liquidxd);
    'lourdas_v': attrs => hiera_hash(system::users::lourdas_v);
    'mgorny': attrs => hiera_hash(system::users::mgorny);
    'miska': attrs => hiera_hash(system::users::miska);
    'moloch': attrs => hiera_hash(system::users::moloch);
    'nikhatzi': attrs => hiera_hash(system::users::nikhatzi);
    'parapente': attrs => hiera_hash(system::users::parapente);
    'pktoss': attrs => hiera_hash(system::users::pktoss);
    'psomas': attrs => hiera_hash(system::users::psomas);
    'pvidalis': attrs => hiera_hash(system::users::pvidalis);
    'skiarxon': attrs => hiera_hash(system::users::skiarxon);
    'tampakrap': attrs => hiera_hash(system::users::tampakrap);
    'tomkap': attrs => hiera_hash(system::users::tomkap);
    'tzorvas': attrs => hiera_hash(system::users::tzorvas);
    'wired': attrs => hiera_hash(system::users::wired);
    'yz250': attrs => hiera_hash(system::users::yz250);
  }

}
