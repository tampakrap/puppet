node 'eyedea.tampakrap.gr' {
  portage::makeconf { 'use':
    content => 'ruby'
  }
  portage::makeconf { 'ruby_targets':
    content => 'ruby19'
  }
  eselect { 'ruby':
    set => 'ruby19'
  }

  include infrastructure::puppetmaster
  include puppet::agent

}

node 'evidence.tampakrap.gr' {
  portage::makeconf { 'use':
    content => 'ruby'
  }
  portage::makeconf { 'ruby_targets':
    content => 'ruby19'
  }
  eselect { 'ruby':
    set => 'ruby19'
  }

  include puppet::agent
}

node 'raekwon.tampakrap.gr' {
  portage::makeconf { 'use':
    content => 'ruby'
  }
  portage::makeconf { 'ruby_targets':
    content => 'ruby19'
  }
  eselect { 'ruby':
    set => 'ruby19'
  }

  include puppet::agent
}
