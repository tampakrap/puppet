class webservice {

  include apache

  facter::fact { 'apache': value => 'true' }

}
