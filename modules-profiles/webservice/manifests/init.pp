class webservice {

  include apache

  defined_type::fact { 'apache': value => 'true' }

}
