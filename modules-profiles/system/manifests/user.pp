define system::user ( $attrs ) {

  if is_hash($attrs) {
    if $attrs[uid] { $uid = $attrs[uid] }
    if $attrs[gid] { $uid = $attrs[gid] }
    if $attrs[groups] { $groups = $attrs[groups] }
    if $attrs[ensure] { $ensure = $attrs[ensure] }
  } else {
    $ensure = 'absent'
  }

  user { $name:
    uid    => $uid,
    gid    => $gid,
    groups => concat([$attrs[name], 'users'], $groups),
    ensure => $ensure,
  }

}
