class system::portage::layman {

  if ! defined(Facter::Fact['gentoo_tool_layman']) {
    facter::fact { 'gentoo_tool_layman': value => true }
  }

}
