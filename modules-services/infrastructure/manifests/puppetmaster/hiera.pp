class infrastructure::puppetmaster::hiera {

  portage::package { 'dev-ruby/deep_merge':
    keywords => ['~amd64', '~x86'],
    target   => 'puppet',
    ensure   => '1.0.0',
  }

  file {'hiera.yaml':
    path   => "$confdir/$name",
    source => "puppet:///infrastructure/$path",
  }

  file {'common.yaml':
    path   => "$confdir/hiera/$name",
    source => "puppet:///infrastructure/$path",
  }

  file {'puppet-test1.dev.gentoo.org.yaml':
    path   => "$confdir/hiera/node/$name",
    source => "puppet:///infrastructure/$path",
  }

}
