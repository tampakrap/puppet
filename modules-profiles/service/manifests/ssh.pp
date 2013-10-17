class service::ssh (
  $port = '22',
  $addressfamily = 'any',
  $listenaddress = '0.0.0.0',
  $hostkey = [
    '/etc/ssh/ssh_host_rsa_key',
    '/etc/ssh/ssh_host_dsa_key',
    '/etc/ssh/ssh_host_ecdsa_key',
  ],
  $subsystem = 'sftp /usr/lib64/misc/sftp-server',
  $logingracetime = '45',
  $permitrootlogin = 'no',
  $rsaauthentication = 'no',
  $passwordauthentication = 'yes',
  $permitemptypasswords = 'no',
  $challengeresponseauthentication = 'no',
  $usepam = 'yes',
  $clientaliveinterval = '30',
  $clientalivecountmax = '4',
  $allowusers,
) {
  include ::ssh

  ssh::config::server {
    'Port':
      content => $port,
      order   => 01;
    'AddressFamily': content => $addressfamily;
    'ListenAddress':
      content => hiera_array(service::ssh::listenaddress),
      multiple => true;
    'HostKey':
      content  => $hostkey,
      multiple => true;
    'Subsystem': content => $subsystem;
    'LoginGraceTime': content => $logingracetime;
    'PermitRootLogin': content => $permitrootlogin;
    'RSAAuthentication': content => $rsaauthentication;
    'PasswordAuthentication': content => $passwordauthentication;
    'PermitEmptyPasswords': content => $permitemptypasswords;
    'ChallengeResponseAuthentication': content => $challengeresponseauthentication;
    'UsePAM': content => $usepam;
    'ClientAliveInterval': content => $clientaliveinterval;
    'ClientAliveCountMax': content => $clientalivecountmax;
    'AllowUsers': content => hiera_array(service::ssh::allowusers);
  }

}
