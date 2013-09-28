node 'puppet-test1.dev.gentoo.org' {
  portage::makeconf {'gentoo_mirrors':
    content => 'http://mirror.mcs.anl.gov/pub/gentoo/',
  }
  portage::makeconf { 'use':
    content => 'ruby',
  }
  portage::makeconf { 'ruby_targets':
    content => 'ruby19',
  }
  eselect { 'ruby':
    set => 'ruby19',
  }
}
