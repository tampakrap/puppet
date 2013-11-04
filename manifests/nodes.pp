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
  include syslogng
}

node 'raekwon.pebkac.gr' {
}

node 'virtuoso.pebkac.gr' {
}
