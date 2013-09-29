class infrastructure::puppetmaster {

  $modulepath = hiera_array('puppet_modulepath')

  class { 'puppet::server':
    modulepath => inline_template("<%= modulepath.join(':') %>"),
  }

  include infrastructure::puppetmaster::hiera
  include infrastructure::puppetmaster::r10k

  file { '/etc/puppet/manifests', '/etc/puppet/modules':
    ensure => absent,
  }
}
