define service::portage::make_conf::useflag_group {
  file { '/etc/facter': ensure => 'directory' }
  file { '/etc/facter/facts.d':
    ensure  => 'directory',
    require => File['/etc/facter'],
  }
  file { "/etc/facter/facts.d/${name}.txt":
    content => "useflag_group_${name}=true",
    require => File['/etc/facter/facts.d'],
  }
}
