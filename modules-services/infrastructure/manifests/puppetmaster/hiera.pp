class infrastructure::puppetmaster::hiera {

  portage::package { 'dev-ruby/deep_merge':
    keywords => ['~amd64', '~x86'],
    target   => 'puppet',
    ensure   => '1.0.0',
  }

  file {'/etc/puppet/hiera.yaml':
    source => "puppet:///modules-services/infrastructure/$name",
  }

  file {'/etc/puppet/hiera/common.yaml':
    source => "puppet:///modules-services/infrastructure/$name",
  }

  file {'/etc/puppet/hiera/node/puppet-test1.dev.gentoo.org.yaml':
    source => "puppet:///modules-services/infrastructure/$name",
  }

}
