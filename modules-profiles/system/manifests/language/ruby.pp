class system::language::ruby (
  $bundler_ensure,
  $eselect_ruby_ensure,
  $eselect,
) {

  include ::ruby

  package {
    'dev-ruby/bundler':
      before => Portage::Package['rubygems'],
      ensure => $bundler_ensure;
    'app-admin/eselect-ruby':
      ensure => $eselect_ruby_ensure;
  }

  eselect { 'ruby':
    require => [
      Portage::Package['ruby'],
      Package['app-admin/eselect-ruby'],
    ],
    set     => $eselect,
  }

}
