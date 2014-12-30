Package {
  provider        => 'zypper',
  install_options => ['--no-recommends'],
}

filebucket { 'remote':
  server => 'odb.forkbomb.gr',
  path   => false,
}

Service {
  provider   => 'systemd',
  hasrestart => true,
  hasstatus  => true,
}

File {
  ensure => present,
  owner  => 'root',
  group  => 'root',
  mode   => '0640',
  backup => 'remote',
}

# Always show stdout/stderr in the reports
Exec {
  logoutput => true,
  tries     => 2,
  try_sleep => 5,
}
