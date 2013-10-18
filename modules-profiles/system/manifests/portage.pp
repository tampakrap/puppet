class system::portage {
  include ::portage
  include system::portage::make_conf
  include system::portage::eselect
}
