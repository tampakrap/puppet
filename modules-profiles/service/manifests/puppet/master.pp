class service::puppet::master {

  $modulepath = hiera_array('puppet_modulepath')

  class { '::puppet::server':
    modulepath => inline_template("<%= modulepath.join(':') %>"),
  }

  include service::puppet::master::hiera

  file { '/etc/puppet/auth.conf':
    source => 'puppet:///modules/infrastructure/etc/puppet/auth.conf',
  }

  include ::r10k
  include ::r10k::prerun_command

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
