node 'eyedea.pebkac.gr' {
  include role::generic
  include role::puppetmaster
}

node 'evidence.pebkac.gr' {
  include role::generic
}

node 'everlast.pebkac.gr' {
  include role::generic
  include webpage::identity_pebkac_gr
}

node 'raekwon.pebkac.gr' {
  include role::generic
}
