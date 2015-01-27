class service::puppet (
  $environment,
) {
  include facter
  include ::puppet::agent

  facter::fact { 'environment': value => $environment }
}
