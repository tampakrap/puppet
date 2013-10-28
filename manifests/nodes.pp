node 'eyedea.pebkac.gr' {
  include role::generic
  include role::puppetmaster
  notify { 'test1': }
}

node 'evidence.pebkac.gr' {
}

node 'everlast.pebkac.gr' {
  include role::generic
  include webpage::identity
  notify { 'test2': }
}

node 'raekwon.pebkac.gr' {
}

node 'virtuoso.pebkac.gr' {
}
