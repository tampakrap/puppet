class service::puppet (
  $environment,
) {
  include facter

  facter::fact { 'environment': value => $environment }
}
