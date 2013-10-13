if ! defined(Class['Service::Portage::Webapp_config']) {
  class service::portage::webapp_config {
    package { 'app-admin/webapp-config': }
  }
}
