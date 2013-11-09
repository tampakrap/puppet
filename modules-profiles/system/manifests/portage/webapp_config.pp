class system::portage::webapp_config {

  if ! defined(Service::Fact['gentoo_tool_webapp_config']) {
    defined_type::fact { 'gentoo_tool_webapp_config': value => true }
  }

}
