class service::portage::make_conf::use_apache {

  if ! defined(Service::Fact['useflag_group_apache']) {
    service::fact { 'useflag_group_apache': value => true }
  }

}
