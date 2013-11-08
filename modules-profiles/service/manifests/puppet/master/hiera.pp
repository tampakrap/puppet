class service::puppet::master::hiera (
  $backends,
  $datadir,
  $hierarchy,
  $merge_behavior,
) {

  include puppet::params

  case $puppet::server::servertype {
    'passenger': { $service = 'httpd' }
    'unicorn': { $service = '??' }
    'thin': { $service = '??' }
    'standalone': { $service = $puppet::params::master_service }
  }

  portage::package { 'dev-ruby/deep_merge':
    keywords => ['~amd64', '~x86'],
    target   => 'puppet',
    ensure   => '1.0.0-r1',
  }

  file { '/etc/puppet/hiera.yaml':
    ensure  => file,
    content => template("${module_name}/puppet/hiera.yaml.erb"),
    notify  => Service[$service],
  }

  file { '/etc/hiera.yaml':
    target => '/etc/puppet/hiera.yaml',
    ensure => link,
  }

}
