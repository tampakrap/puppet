class service::puppet::master::hiera {

  portage::package { 'dev-ruby/deep_merge':
    keywords => ['~amd64', '~x86'],
    target   => 'puppet',
    ensure   => '1.0.0',
  }

  file {'hiera.yaml':
    path   => "$confdir/$name",
    source => "puppet:///modules-services/puppet/$name",
  }

  file {'common.yaml':
    path   => "$confdir/hiera/$name",
    source => "puppet:///modules-services/puppet/$name",
  }

  file {'puppet-test1.dev.gentoo.org.yaml':
    path   => "$confdir/hiera/node/$name",
    source => "puppet:///modules-services/puppet/$name",
  }

}
