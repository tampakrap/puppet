class system::language::gcc (
  $ensure,
  $eselect,
  $gcc_config_ensure,
) {

  package {
    'dev-lang/gcc': ensure => $ensure;
    'app-admin/gcc-config': ensure => $gcc_config_ensure;
  }

  eselect { 'gcc':
    require => [
      Package['dev-lang/gcc'],
      Package['app-admin/gcc-config'],
    ],
    set     => $eselect,
  }
