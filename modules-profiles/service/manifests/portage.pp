class service::portage {
  include service::portage::make_conf
  include service::portage::eselect
}
