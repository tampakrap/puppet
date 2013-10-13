class service::portage (
  $use_apache = false,
  $use_php    = false,
  $use_ldap   = false,
  $use_scm    = false,
  $use_ipv6   = false,
) {
  include service::portage::make_conf
  include service::portage::eselect
}
