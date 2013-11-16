class service::database::postgres {

  facter::fact { 'postgres': value => 'true' }

}
