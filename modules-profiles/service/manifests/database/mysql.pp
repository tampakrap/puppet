class service::database::mysql {

  facter::fact { 'mysql': value => 'true' }

}
