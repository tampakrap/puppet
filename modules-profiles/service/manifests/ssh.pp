class service::ssh (
  $port,
  $addressfamily,
  $listenaddress,
  $hostkey,
  $subsystem,
  $logingracetime,
  $permitrootlogin,
  $rsaauthentication,
  $passwordauthentication,
  $permitemptypasswords,
  $challengeresponseauthentication,
  $usepam,
  $clientaliveinterval,
  $clientalivecountmax,
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
