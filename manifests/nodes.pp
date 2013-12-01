node 'eyedea.pebkac.gr' {
  include role::base
  include role::puppetmaster
  include role::relayhost
}

node 'evidence.pebkac.gr' {
  include role::base
}

node 'everlast.pebkac.gr' {
  include role::base
}

node 'raekwon.pebkac.gr' {
  include role::base
  include role::bnc::quassel
}

node 'virtuoso.pebkac.gr' {
}

node 'slug.pebkac.gr' {
  include role::base
}

node 'esoteric.pebkac.gr' {
  include role::base
}

node 'apathy.pebkac.gr' {
  include role::base
}
