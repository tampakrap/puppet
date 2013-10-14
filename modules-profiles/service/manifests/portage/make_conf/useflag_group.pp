define service::portage::make_conf::useflag_group {
  file { "/etc/facter/facts.d/${name}.txt":
    content => "useflag_group_${name}=true",
    require => File['/etc/facter/facts.d'],
  }
}
