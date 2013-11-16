class service::puppet (
  $environment,
  $puppet_syntax_ensure,
  $net_tools_ensure,
  $net_tools_use,
) {

  include ::puppet::agent

  facter::fact { 'environment': value => $environment }

  portage::package {
    'app-vim/puppet-syntax':
      ensure => $puppet_syntax_ensure;
    'sys-apps/net-tools':
      before => Package['dev-ruby/facter'],
      use    => $net_tools_use,
      ensure => $net_tools_ensure;
  }

}
