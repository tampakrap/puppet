class system::portage::layman {

  if ! defined(Service::Fact['gentoo_tool_layman']) {
    service::fact { 'gentoo_tool_layman': value => true }
  }

}
