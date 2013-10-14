class service::portage::make_conf::use_apache {

  file { '/etc/facter/facts.d/useflag_group_apache.txt':
    content => 'useflag_group_apache=true'
  }

}
