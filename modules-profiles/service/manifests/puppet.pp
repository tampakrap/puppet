class service::puppet (
  $environment,
  $facter_ensure,
  $hiera_ensure,
) {

  include ::puppet::agent

  file { '/etc/facter': ensure => 'directory' }

  file { '/etc/facter/facts.d':
    ensure  => 'directory',
    require => File['/etc/facter'],
  }

  defined_type::fact { 'environment': value => $environment }

  portage::package {
    'dev-ruby/facter':
      ensure => $facter_ensure;
    'dev-ruby/hiera':
      ensure => $hiera_ensure;
  }

}
