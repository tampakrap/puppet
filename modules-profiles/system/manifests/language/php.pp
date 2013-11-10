class system::language::php (
  $ensure,
  $use,
  $eselect,
  $eselect_php_ensure,
) {

  defined_type::fact { 'php': value => 'true' }

  portage::package { 'dev-lang/php':
    use    => $use,
    ensure => $ensure,
    notify => Service['httpd'],
  }

  package { 'app-admin/eselect-php': ensure => $eselect_php_ensure }

  eselect { ['php::apache2', 'php::cli', 'php::cgi']:
    require => [
      Portage::Package['dev-lang/php'],
      Package['app-admin/eselect-php'],
    ],
    set     => $eselect,
  }

  package { 'dev-lang/php:5.4': ensure => absent }

}
