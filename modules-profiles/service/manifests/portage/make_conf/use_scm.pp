class service::portage::make_conf::use_scm {

  file { '/etc/facter/facts.d/useflag_group_scm.txt':
    content => 'useflag_group_scm=true'
  }

}
