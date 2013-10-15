node 'eyedea.pebkac.gr' {
  include role::generic
  include role::puppetmaster
}

node 'evidence.pebkac.gr' {
  include role::generic
}

node 'everlast.pebkac.gr' {
  include role::generic
  include webpage::identity

  portage::package { 'app-portage/mirrorselect':
    ensure   => 'absent',
    target   => 'mirrorselect',
    keywords => '**',
  }
}

node 'raekwon.pebkac.gr' {
  include role::generic
}
