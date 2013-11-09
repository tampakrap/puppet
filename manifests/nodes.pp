node 'eyedea.pebkac.gr' {
  include role::generic
  include role::puppetmaster
  include role::relayhost
}

node 'evidence.pebkac.gr' {
  include role::generic
}

node 'everlast.pebkac.gr' {
  include role::generic
  include webpage::identity
}

node 'raekwon.pebkac.gr' {
  include role::generic
}

node 'virtuoso.pebkac.gr' {
}
