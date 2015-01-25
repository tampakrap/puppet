class system::packages::various (
  $etc_update,
  $fdupes,
  $libgdbm4,
  $libICE6,
  $libruby2_1_2_1,
  $libSM6,
  $libXt6,
  $libyaml_0_2,
  $perl,
  $ruby_common,
  $ruby2_1,
  $ruby2_1_rubygem_gem2rpm,
  $ruby2_1_stdlib,
  $sudo,
  $vim,
  $vim_data,
) {
  package {
    'etc-update': ensure => $etc_update;
    'fdupes': ensure => $fdupes;
    'libgdbm4': ensure => $libgdbm4;
    'libICE6': ensure => $libICE6;
    'libruby2_1-2_1': ensure => $libruby2_1_2_1;
    'libSM6': ensure => $libSM6;
    'libXt6': ensure => $libXt6;
    'libyaml-0-2': ensure => $libyaml_0_2;
    'perl': ensure => $perl;
    'ruby-common': ensure => $ruby_common;
    'ruby2.1': ensure => $ruby2_1;
    'ruby2.1-rubygem-gem2rpm': ensure => $ruby2_1_rubygem_gem2rpm;
    'ruby2.1-stdlib': ensure => $ruby2_1_stdlib;
    'sudo': ensure => $sudo;
    'vim': ensure => $vim;
    'vim-data': ensure => $vim_data;
  }
}
