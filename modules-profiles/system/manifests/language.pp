class system::language (
  $bundler_ensure,
  $php_ensure,
  $php_use,
) {

  include ruby

  package { 'dev-ruby/bundler':
    before => Portage::Package['rubygems'],
    ensure => $bundler_ensure,
  }

  if $php_ensure != 'absent' {
    portage::package { 'dev-lang/php':
      use    => $php_use,
      ensure => $php_ensure,
    }
  }

}
