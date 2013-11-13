class service::puppet (
  $environment,
) {

  include ::puppet::agent

  file { '/etc/facter': ensure => 'directory' }

  file { '/etc/facter/facts.d':
    ensure  => 'directory',
    require => File['/etc/facter'],
  }

  defined_type::fact { 'environment': value => $environment }

}
