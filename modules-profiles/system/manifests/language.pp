class system::language (
  $bundler
) {

  include ruby

  package { 'dev-ruby/bundler':
    before => Portage::Package['rubygems'],
    ensure => $bundler,
  }

}
