class service::puppet (
  $environment,
  $puppet_syntax_ensure,
  $net_tools_ensure,
) {

  include ::puppet::agent
  include facter

  facter::fact { 'environment': value => $environment }

  portage::package {
    'app-vim/puppet-syntax':
      ensure => $puppet_syntax_ensure;
    'sys-apps/net-tools':
      before => Portage::Package['dev-ruby/facter'],
      target => 'puppet',
      ensure => $net_tools_ensure;
  }

}
