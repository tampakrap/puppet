class service::puppet::master::hiera {

  include puppet::params

  portage::package { 'dev-ruby/deep_merge':
    keywords => ['~amd64', '~x86'],
    target   => 'puppet',
    ensure   => '1.0.0',
  }

  file { '/etc/puppet/hiera.yaml':
    source => 'puppet:///modules/service/etc/puppet/hiera.yaml',
    notify => Service['httpd'],
  }

  file { '/etc/hiera.yaml':
    target => '/etc/puppet/hiera.yaml',
    ensure => link,
  }

}
