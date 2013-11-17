class system::language::php (
  $ensure,
  $use,
  $eselect,
  $eselect_php_ensure,
  $targets,
) {

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

  portage::makeconf { 'php_targets':
    before  => Portage::Package['dev-lang/php'],
    content => $targets,
  }

}
