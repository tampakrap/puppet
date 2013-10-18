define service::fact (
  $ensure   = 'present',
  $variable = '',
  $value    = '',
) {

  file { $name:
    ensure  => $ensure,
    content => template('service/fact.erb'),
    require => File['/etc/facter/facts.d'],
  }

}
