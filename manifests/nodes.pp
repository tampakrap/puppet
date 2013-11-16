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
  include role::www::identity
  include role::www::gentoo_el
  include role::www::kde_el
  include role::db::client::postgres
}

node 'raekwon.pebkac.gr' {
  include role::base
  include role::db::client::postgres
  include role::www::gentoo_el
  include role::www::kde_el
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
