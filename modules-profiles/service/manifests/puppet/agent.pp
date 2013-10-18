class service::puppet::agent {
  include ::puppet::agent
  include service::puppet::facter
}
