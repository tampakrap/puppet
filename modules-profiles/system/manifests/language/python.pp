class system::language::python (
  $python2_ensure,
  $python3_ensure,
  $lang_exec_ensure,
  $python_exec_ensure,
  $eselect_python_ensure,
  $eselect_python,
  $eselect_python2,
  $eselect_python3,
) {

  package {
    'app-admin/eselect-python': ensure => $eselect_python_ensure;
    'dev-lang/python-exec': ensure => $lang_exec_ensure;
    'dev-python/python-exec': ensure => $python_exec_ensure;
  }

  eselect {
    'python':
      require => [
        Package['app-admin/eselect-python'],
      ],
      set     => $python;
    'python::python2':
      require => [
        Package['app-admin/eselect-python'],
      ],
      set     => $python2;
    'python::python3':
      require => [
        Package['app-admin/eselect-python'],
      ],
      set     => $python3;
  }

}
