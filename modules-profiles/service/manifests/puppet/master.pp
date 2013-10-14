class service::puppet::master {

  include service::puppet::master::r10k
  include service::puppet::master::hiera

  include ::puppet::server

  file { '/etc/puppet/auth.conf':
    ensure  => file,
    content => template("${module_name}/puppet/auth.conf.erb"),
    notify  => Service['httpd'],
  }

  # Remove empty directories

  file { '/etc/puppet/modules':
    ensure  => absent,
    force   => true,
    recurse => true,
  }

}
