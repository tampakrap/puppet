class system::portage::webapp_config {

  if ! defined(Service::Fact['gentoo_tool_webapp_config']) {
    service::fact { 'gentoo_tool_webapp_config': value => true }
  }

}
