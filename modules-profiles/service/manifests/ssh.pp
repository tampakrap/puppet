class service::ssh {
  include ::ssh

  ssh::config::server {
    'Port':
      content => '22',
      order   => 01;
    'ListenAddress':
      content => ['178.63.20.213', '2a01:4f8:141:43c1::213'],
      multiple => true;
    'UsePAM': content => 'yes';
    'HostKey':
      multiple => true,
      content  => [
        '/etc/ssh/ssh_host_rsa_key',
        '/etc/ssh/ssh_host_dsa_key',
        '/etc/ssh/ssh_host_ecdsa_key'
      ];
    'Subsystem': content => 'sftp /usr/lib64/misc/sftp-server';
    'AllowUsers': content => ['tampakrap', 'tomkap'];
  }

}
