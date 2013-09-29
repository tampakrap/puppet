class service::puppet:master {
  include puppet::server
  include service::puppet::master::hiera
}
