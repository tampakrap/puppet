define system::user ( $attrs ) {

  if is_hash($attrs) {
    if $attrs[uid] { $uid = $attrs[uid] }
    if $attrs[gid] { $gid = $attrs[gid] }
    if $attrs[groups] { $groups = $attrs[groups] }
    if $attrs[ensure] { $ensure = $attrs[ensure] }
  }

  if ! $groups { $groups = [] }
  if ! $ensure { $ensure = 'absent' }

  user { $name:
    uid        => $uid,
    gid        => $gid,
    groups     => concat([$name, 'users'], $groups),
    home       => "/home/$name",
    managehome => true,
    ensure     => $ensure,
  }

}
