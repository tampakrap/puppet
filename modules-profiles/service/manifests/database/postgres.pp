class service::database::postgres {

  defined_type::fact { 'postgres': value => $enabled }

}
