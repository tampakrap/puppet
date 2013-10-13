class webpage::identity (
  $domain = 'identity',
) {
  class { 'service::portage': use_apache => true }
  class { 'webservice::okupy': domain => $domain }
}
