class service::cron (
  $ensure,
) {

  package { 'sys-process/vixie-cron': ensure => $ensure }

}
