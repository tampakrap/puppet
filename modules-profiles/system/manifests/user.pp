define system::user ( $attrs ) {

  user { $attrs[name]:
    uid    => $attrs[uid],
    gid    => $attrs[gid],
    groups => concat([$attrs[name], 'users'], $attrs[groups]),
    ensure => $attrs[ensure],
  }

}
