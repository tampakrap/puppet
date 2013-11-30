class service::puppet::master (
  $tagmail,
) {

  include webservice
  include r10k
  include r10k::prerun_command
  include hiera

  facter::fact { 'puppetmaster': value => true }

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
