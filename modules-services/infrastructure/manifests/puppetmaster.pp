class infrastructure::puppetmaster {
  include puppet::server
  include infrastructure::puppetmaster::hiera
  include infrastructure::puppetmaster::r10k
}
