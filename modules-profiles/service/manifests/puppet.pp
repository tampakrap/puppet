class service::puppet (
  $environment,
) {
  include facter
  include ::puppet::agent

  fact { 'environment': content => $environment }
}
