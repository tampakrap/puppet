class system::portage::repos_conf {

  Ini_setting {
    path   => '/etc/portage/repos.conf/gentoo.conf',
    ensure => present,
  }

  ini_setting {
    'main-repo':
      section => 'DEFAULT',
      setting => 'main-repo',
      value   => 'gentoo';
    'location':
      section => 'gentoo',
      setting => 'location',
      value   => '/usr/portage';
    'sync-type':
      section => 'gentoo',
      setting => 'sync-type',
      value   => 'rsync';
    'sync-uri':
      section => 'gentoo',
      setting => 'sync-uri',
      value   => 'rsync://rsync.gentoo.org/gentoo-portage';
  }

}
