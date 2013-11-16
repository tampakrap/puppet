class system::portage::repos_conf {

  Ini_setting {
    path   => '/etc/portage/repos.conf/gentoo.conf',
    ensure => present,
  }

  ini_setting {
    'main-repo':
      section => 'DEFAULT',
      value   => 'gentoo';
    'location':
      section => 'gentoo',
      value   => '/usr/portage';
    'sync-type':
      section => 'gentoo',
      value   => 'rsync';
    'sync_uri':
      section => 'gentoo',
      value   => 'rsync://rsync.gentoo.org/gentoo-portage';
  }

}
