class service::log (
  $cronolog_ensure,
  $syslog_ng_ensure,
) {

  if defined(package['httpd']) {
    package { 'app-admin/cronolog': ensure => $cronolog_ensure }
  }

  package { 'app-admin/syslog-ng': ensure => $syslog_ng_ensure }

  if defined(package['httpd']) {
    logrotate::rule { 'apache':
      path          => '/var/log/apache2/*.log',
      sharedscripts => true,
      postrotate    => '/etc/init.d/apache2 restart',
    }
  }

}
