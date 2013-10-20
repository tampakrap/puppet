class service::puppet::master (
  $tagmail = '',
) {

  include service::puppet::master::r10k
  include service::puppet::master::hiera

  service::fact { 'puppet_master': value => true }

  include ::puppet::server

  file { '/etc/puppet/auth.conf':
    ensure  => file,
    content => template("${module_name}/puppet/auth.conf.erb"),
    notify  => Service['httpd'],
  }

  file { '/etc/puppet/tagmail.conf':
    content => "all: $tagmail",
    ensure  => present,
  }

  # Remove empty directories

  file { '/etc/puppet/modules':
    ensure  => absent,
    force   => true,
    recurse => true,
  }

}
