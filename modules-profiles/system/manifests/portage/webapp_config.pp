class system::portage::webapp_config {

  if ! defined(Facter::Fact['gentoo_tool_webapp_config']) {
    facter::fact { 'gentoo_tool_webapp_config': value => true }
  }

}
