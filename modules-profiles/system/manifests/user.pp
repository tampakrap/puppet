define system::user ( $attrs ) {

  if is_hash($attrs) {
    if $attrs[uid] { $uid = $attrs[uid] }
    if $attrs[gid] { $gid = $attrs[gid] }
    if $attrs[groups] { $groups = $attrs[groups] }
    if $attrs[password] { $password = $attrs[password] }
    if $attrs[ensure] { $ensure = $attrs[ensure] }
    if $attrs[keys] {
      $all_keys = $attrs[keys]
      $keys = inline_template("<%= @all_keys.join('\n') %>\n")
    }
    if $attrs[forward] { $forward = $attrs[forward] }
  }

  if ! $groups { $groups = [] }
  if ! $ensure { $ensure = 'absent' }

  user { $name:
    uid        => $uid,
    gid        => $gid,
    groups     => concat(['users'], $groups),
    home       => "/home/$name",
    managehome => true,
    password   => $password,
    ensure     => $ensure,
  }

  if $ensure == 'absent' {
    file { "/home/$name/.ssh":
      ensure  => absent,
      purge   => true,
      recurse => true,
    }
  } else {
    file { "/home/$name/.ssh":
      ensure  => directory,
      owner   => $name,
      group   => $name,
      mode    => 0600,
      require => User[$name],
    }

    file { "/home/$name/.ssh/authorized_keys":
      content => $keys,
      owner   => $name,
      group   => $name,
      mode    => 0644,
      require => [
        File["/home/$name/.ssh"],
        User[$name],
      ],
    }

    file { "/home/$name/.forward":
      content => $forward,
      owner   => $name,
      group   => $name,
      mode    => 0644,
      require => User[$name],
    }
  }

}
