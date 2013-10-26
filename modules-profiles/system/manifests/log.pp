class service::log (
  $cronolog_ensure,
  $logrotate_ensure,
  $syslog_ng_ensure,
) {

  if defined(package['httpd']) {
    package { 'app-admin/cronolog': ensure => $cronolog_ensure }
  }

  package { 'app-admin/logrotate': ensure => $logrotate_ensure }
  package { 'app-admin/syslog-ng': ensure => $syslog_ng_ensure }

}
