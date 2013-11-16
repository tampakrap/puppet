class system::portage::layman {

  if ! defined(Service::Fact['gentoo_tool_layman']) {
    facter::fact { 'gentoo_tool_layman': value => true }
  }

}
