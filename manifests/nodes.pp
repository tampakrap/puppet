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

  include service::puppet::master
  include service::puppet::agent

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

  include service::puppet::agent
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

  include service::puppet::agent
}
