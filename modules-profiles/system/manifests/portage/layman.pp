class system::portage::layman {

  if ! defined(Service::Fact['gentoo_tool_layman']) {
    defined_type::fact { 'gentoo_tool_layman': value => true }
  }

}
