class service::log (
  $cronolog_ensure,
  $syslog_ng_ensure,
) {

  include logrotate

  if defined(package['httpd']) {
    package { 'app-admin/cronolog': ensure => $cronolog_ensure }
  }

  package { 'app-admin/syslog-ng': ensure => $syslog_ng_ensure }

}
