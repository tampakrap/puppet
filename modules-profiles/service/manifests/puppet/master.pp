class service::puppet::master (
  $tagmail,
) {

  include webservice
  include service::puppet::master::r10k
  include service::puppet::master::hiera

  defined_type::fact { 'puppet_master': value => true }

  include ::puppet::server

  file { '/etc/puppet/auth.conf':
    ensure  => file,
    content => template("${module_name}/puppet/auth.conf.erb"),
    notify  => Service['httpd'],
  }

  if $tagmail {
    file { '/etc/puppet/tagmail.conf':
      content => "all: $tagmail",
      ensure  => present,
      notify  => Service['httpd'],
    }
  }

  # Remove empty directories

  file { '/etc/puppet/modules':
    ensure  => absent,
    force   => true,
    recurse => true,
  }

}
