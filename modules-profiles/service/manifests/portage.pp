class service::portage {
  include ::portage
  include service::portage::make_conf
  include service::portage::eselect
}
