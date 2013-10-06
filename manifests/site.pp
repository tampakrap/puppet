import 'nodes.pp'

# Global defaults
Package { provider => portage }

filebucket { 'remote':
  server => 'puppetmaster.pebkac.gr',
  path   => false,
}

Service {
  provider   => 'openrc',
  hasrestart => true,
  hasstatus  => true,
}

File {
  owner  => 'root',
  group  => 'root',
  mode   => 0644,
  backup => 'remote',
}

# Always show stdout/stderr in the reports
Exec { logoutput => true }
