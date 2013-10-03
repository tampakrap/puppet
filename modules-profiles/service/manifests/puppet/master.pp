class service::puppet::master {

  #include service::puppet::master::r10k
  include service::puppet::master::hiera

  include ::puppet::server

  file { '/etc/puppet/auth.conf':
    source => 'puppet:///modules/service/etc/puppet/auth.conf',
  }

  # Remove empty directories

  file { '/etc/puppet/manifests':
    ensure  => absent,
    force   => true,
    recurse => true,
  }

  file { '/etc/puppet/modules':
    ensure  => absent,
    force   => true,
    recurse => true,
  }

}
