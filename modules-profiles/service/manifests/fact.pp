define service::fact (
  $ensure   = 'present',
  $variable = '',
  $value    = '',
) {

  file { "${name}.txt":
    ensure  => $ensure,
    content => "${variable}=${value}",
    require => File['/etc/facter/facts.d'],
  }

}
