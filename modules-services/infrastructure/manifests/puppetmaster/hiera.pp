class infrastructure::puppetmaster::hiera {

  portage::package { 'dev-ruby/deep_merge':
    keywords => ['~amd64', '~x86'],
    target   => 'puppet',
    ensure   => '1.0.0',
  }

  file { '/etc/puppet/hiera.yaml':
    source => 'puppet:///modules-services/infrastructure/etc/puppet/hiera.yaml',
  }

  file {'/etc/puppet/hiera/':
    source  => 'puppet:///modules-services/infrastructure/etc/puppet/hiera/',
    recurse => true,
  }

  file { '/etc/hiera.yaml':
    target => '/etc/puppet/hiera.yaml',
    ensure => link,
  }

}
