class system::users (
  $dastergon,
  $tampakrap,
) {

  user { 'root':
    managehome => false,
    password   => '!',
    system     => true,
    uid        => '0',
    gid        => '0',
    ensure     => present,
    home       => '/root',
    groups     => ['root'],
  }

  defined_type::user {
    'dastergon': attrs => hiera_hash(system::users::dastergon);
    'tampakrap': attrs => hiera_hash(system::users::tampakrap);
  }

}
