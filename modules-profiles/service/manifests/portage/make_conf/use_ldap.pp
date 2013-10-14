class service::portage::make_conf::use_ldap {

  file { '/etc/facter/facts.d/useflag_group_ldap.txt':
    content => 'useflag_group_ldap=true'
  }

}
