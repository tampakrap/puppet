define service::fact (
  $ensure   = 'present',
  $variable = '',
  $value    = '',
) {

  file { "/etc/facter/facts.d/${name}.txt":
    ensure  => $ensure,
    content => "${variable}=${value}",
    require => File['/etc/facter/facts.d'],
  }

}
