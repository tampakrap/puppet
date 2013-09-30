class service::puppet::master {

  $modulepath = hiera_array('puppet_modulepath')

  class { '::puppet::server':
    modulepath => inline_template("<%= modulepath.join(':') %>"),
  }

  include service::puppet::master::hiera
  include service::puppet::master::r10k

  file { '/etc/puppet/auth.conf':
    source => 'puppet:///modules/infrastructure/etc/puppet/auth.conf',
  }

  # Remove empty directories

  file { '/etc/puppet/manifests':
    ensure => absent,
    force  => true
  }

  file { '/etc/puppet/modules':
    ensure => absent,
    force  => true
  }

}
