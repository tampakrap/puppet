define system::user ( $attrs ) {

  if $attrs[groups] {
    $groups = $attrs[groups]
  } else {
    $groups = []
  }

  if $attrs[ensure] {
    $ensure = $attrs[ensure]
  } else {
    $ensure = 'absent'
  }

  user { $attrs[name]:
    uid    => $attrs[uid],
    gid    => $attrs[gid],
    groups => concat([$attrs[name], 'users'], $groups),
    ensure => $ensure,
  }

}
