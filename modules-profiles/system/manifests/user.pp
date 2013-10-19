define system::user ( $attrs ) {

  if $attrs[uid] { $uid = $attrs[uid] }
  if $attrs[gid] { $gid = $attrs[gid] }
  if $attrs[groups] { $groups = $attrs[groups] }

  user { $attrs[name]:
    uid    => $uid,
    gid    => $gid,
    groups => concat([$attrs[name], 'users'], $groups),
    ensure => $attrs[ensure],
  }

}
