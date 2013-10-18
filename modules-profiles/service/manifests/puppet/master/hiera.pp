class service::puppet::master::hiera (
  $backends       = ['yaml'],
  $datadir        = '/etc/puppet/environments/_percent_{::environment}/hieradata',
  $hierarchy      = '',
  $merge_behavior = '',
) {

  include puppet::params

  portage::package { 'dev-ruby/deep_merge':
    keywords => ['~amd64', '~x86'],
    target   => 'puppet',
    ensure   => '1.0.0',
  }

  file { '/etc/puppet/hiera.yaml':
    ensure  => file,
    content => template("${module_name}/puppet/hiera.yaml.erb"),
    notify  => Service['httpd'],
  }

  file { '/etc/hiera.yaml':
    target => '/etc/puppet/hiera.yaml',
    ensure => link,
  }

}