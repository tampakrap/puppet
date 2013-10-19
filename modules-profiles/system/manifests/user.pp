define system::user ( $attrs ) {

  if is_hash($attrs) {
    if $attrs[uid] { $uid = $attrs[uid] }
    if $attrs[gid] { $gid = $attrs[gid] }
    if $attrs[groups] { $groups = $attrs[groups] }
    if $attrs[ensure] { $ensure = $attrs[ensure] }
  } else {
    $ensure = 'absent'
  }

  if ! $groups { $groups = [] }

  user { $name:
    uid        => $uid,
    gid        => $gid,
    groups     => concat([$name, 'users'], $groups),
    home       => "/home/$name",
    managehome => true,
    ensure     => $ensure,
  }

}
