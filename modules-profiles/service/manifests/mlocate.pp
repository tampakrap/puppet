class service::mlocate (
  $ensure,
  $nice,
  $ionice_class,
  $ionice_priority,
  $updatedb_prunefs,
  $updatedb_prunepaths,
  $updatedb_prunenames
  $updatedb_prune_bind_mounts,
) {

  package { 'sys-apps/mlocate': ensure => $ensure }

  file { '/etc/cron.daily/mlocate': ensure => absent }

  file { '/usr/local/bin/mlocate-cron.sh':
    source  => "puppet:///modules/${module_name}/mlocate-cron.sh"
    ensure  => present,
    require => Package['sys-apps/mlocate'],
    mode    => '0700',
    owner   => 'root',
    group   => 'root',
  }

  cron { 'mlocate cron':
    ensure  => present,
    command => '/usr/local/bin/mlocate-cron.sh',
    hour    => '2',
    minute  => '27',
    require => [
      Pakcage['sys-apps/mlocate'],
      File['/usr/local/bin/mlocate-cron.sh'],
    ],
  }

  file { '/etc/mlocate.conf':
    content => template("${module_name}/mlocate/mlocate.conf.erb")
    ensure  => present,
    require => Package['sys-apps/mlocate'],
  }

  file { '/etc/updatedb.conf':
    content => template("${module_name}/mlocate/updatedb.conf.erb")
    ensure  => present,
    require => Package['sys-apps/mlocate'],
  }

