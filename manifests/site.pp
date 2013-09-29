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
  class { 'puppet::server':
    servertype => 'standalone',
    monitor_server => true,
    backup_server => true,
    manifest => '$confdir/environments/$environment/manifests/site.pp',
    modulepath => '$confdir/environments/$environment/modules:$confdir/environments/$environment/modules-base:$confdir/environments/$environment/modules-services:$confdir/environments/$environment/modules-roles',
    ca => true,
    keywords => '~amd64',
    ensure => 'latest',
    use => ['augeas', 'diff', '-doc', '-emacs', 'ldap', '-minimal', 'rrdtool', 'shadow', 'sqlite3', 'vim-syntax', '-xemacs'],
  }
  class { 'puppet::agent':
    server => 'puppet-test1.dev.gentoo.org',
  }
}
