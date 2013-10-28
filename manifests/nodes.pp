node 'eyedea.pebkac.gr' {
  include role::generic
  include role::puppetmaster
}

node 'evidence.pebkac.gr' {
}

node 'everlast.pebkac.gr' {
  include role::generic
  include webpage::identity
}

node 'raekwon.pebkac.gr' {
}

node 'virtuoso.pebkac.gr' {
}
