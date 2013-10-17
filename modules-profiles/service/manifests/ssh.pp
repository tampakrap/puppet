class service::ssh {
  include ::ssh

  ssh::server_config {
    'Port': content => '22';
    'UsePAM': content => 'yes';
  }

}
