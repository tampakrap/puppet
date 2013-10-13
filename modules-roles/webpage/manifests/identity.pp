class webpage::identity (
  $domain = 'identity',
) {
  class { 'webservice::okupy': domain => $domain }
}
