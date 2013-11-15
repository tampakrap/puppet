class service::puppet (
  $environment,
  $facter_ensure,
  $puppet_syntax_ensure,
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
    'app-vim/puppet-syntax':
      ensure => $puppet_syntax_ensure;
  }

}
