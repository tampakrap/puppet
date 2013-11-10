class system::language::python (
  $ensure,
  $eselect_python_ensure,
  $eselect_python,
  $eselect_python2,
  $eselect_python3,
) {

  package {
    'dev-lang/python':
      ensure => $ensure;
    'app-admin/eselect-python':
      ensure => $eselect_python_ensure;
  }

  eselect {
    'python':
      require => [
        Package['dev-lang/python'],
        Package['app-admin/eselect-python'],
      ],
      set     => $python;
    'python::python2':
      require => [
        Package['dev-lang/python'],
        Package['app-admin/eselect-python'],
      ],
      set     => $python2;
    'python::python3':
      require => [
        Package['dev-lang/python'],
        Package['app-admin/eselect-python'],
      ],
      set     => $python3;
  }
