class system::language::gcc (
  $ensure,
  $eselect,
  $gcc_config_ensure,
) {

  package {
    'sys-devel/gcc': ensure => $ensure;
    'sys-devel/gcc-config': ensure => $gcc_config_ensure;
  }

  eselect { 'gcc':
    require => [
      Package['sys-devel/gcc'],
      Package['sys-devel/gcc-config'],
    ],
    set     => $eselect,
  }

}
