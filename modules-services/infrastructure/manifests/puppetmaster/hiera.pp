class infrastructure::puppetmaster::hiera {

  portage::package { 'dev-ruby/deep_merge':
    keywords => ['~amd64', '~x86'],
    target   => 'puppet',
    ensure   => '1.0.0',
  }

  file {'hiera.yaml':
    path   => "$confdir/$name",
    source => "puppet:///modules-services/infrastructure/$path",
  }

  file {'hiera/common.yaml':
    path   => "$confdir/$name",
    source => "puppet:///modules-services/infrastructure/$path",
  }

  file {'hiera/node/puppet-test1.dev.gentoo.org.yaml':
    path   => "$confdir/$name",
    source => "puppet:///modules-services/infrastructure/$path",
  }

}
