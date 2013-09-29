class infrastructure::puppetmaster {
  include puppet::server
  include infrastructure::puppetmaster::hiera
}
