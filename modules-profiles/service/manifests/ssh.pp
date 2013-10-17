class service::ssh {
  include ::ssh

  ssh::config::server {
    'Port':
      before  => Ssh::Config::Server['ListenAddress'],
      content => '22';
    'ListenAddress': content => ['178.63.20.213', '2a01:4f8:141:43c1::213'];
    'UsePAM': content => 'yes';
    #'HostKey': content => '/etc/ssh/ssh_host_rsa_key';
    #'HostKey': content => '/etc/ssh/ssh_host_dsa_key';
    #'HostKey': content => '/etc/ssh/ssh_host_ecdsa_key';
    'Subsystem': content => 'sftp /usr/lib64/misc/sftp-server';
    'AllowUsers': content => ['tampakrap', 'tomkap'];
  }

}
