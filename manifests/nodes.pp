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
  include webpage::www_gentoo_el_org
}

node 'raekwon.pebkac.gr' {
  include role::generic
}

node 'virtuoso.pebkac.gr' {
}

node 'slug.pebkac.gr' {
  include role::generic
}

node 'esoteric.pebkac.gr' {
  include role::generic
}

node 'apathy.pebkac.gr' {
  include role::generic
}
