class service::ssh {
  include ::ssh

  ssh::config::server {
    'Port': content => '22';
    'UsePAM': content => 'yes';
  }

}
