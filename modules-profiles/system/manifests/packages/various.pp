class system::packages::various (
  $augeas,
  $bind_libs,
  $bind_utils,
  $dmidecode,
  $etc_update,
  $fdupes,
  $iproute2,
  $libdb_4_8,
  $libgdbm4,
  $libICE6,
  $libpci3,
  $libpython2_7_1_0,
  $libruby2_1_2_1,
  $libSM6,
  $libXt6,
  $libxtables10,
  $libyaml_0_2,
  $lsb_release,
  $make,
  $pciutils,
  $pciutils_ids,
  $perl,
  $python_base,
  $ruby_common,
  $ruby2_1,
  $ruby2_1_rubygem_gem2rpm,
  $ruby2_1_rubygem_hiera,
  $ruby2_1_rubygem_json_pure,
  $ruby2_1_rubygem_ruby_augeas,
  $ruby2_1_rubygem_ruby_shadow,
  $ruby2_1_stdlib,
  $rubygem_facter,
  $rubygem_hiera,
  $rubygem_puppet,
  $sudo,
  $vim,
  $vim_data,
  $virt_what,
) {
  package {
    'augeas': ensure => $augeas;
    'bind-libs': ensure => $bind_libs;
    'bind-utils': ensure => $bind_utils;
    'dmidecode': ensure => $dmidecode;
    'etc-update': ensure => $etc_update;
    'fdupes': ensure => $fdupes;
    'iproute2': ensure => $iproute2;
    'libdb-4_8': ensure => $libdb_4_8;
    'libgdbm4': ensure => $libgdbm4;
    'libICE6': ensure => $libICE6;
    'libpci3': ensure => $libpci3;
    'libpython2_7-1_0': ensure => $libpython2_7_1_0;
    'libruby2_1-2_1': ensure => $libruby2_1_2_1;
    'libSM6': ensure => $libSM6;
    'libXt6': ensure => $libXt6;
    'libxtables10': ensure => $libxtables10;
    'libyaml-0-2': ensure => $libyaml_0_2;
    'lsb-release': ensure => $lsb_release;
    'make': ensure => $make;
    'pciutils': ensure => $pciutils;
    'pciutils-ids': ensure => $pciutils_ids;
    'perl': ensure => $perl;
    'python-base': ensure => $python_base;
    'ruby-common': ensure => $ruby_common;
    'ruby2.1': ensure => $ruby2_1;
    'ruby2.1-rubygem-gem2rpm': ensure => $ruby2_1_rubygem_gem2rpm;
    'ruby2.1-rubygem-hiera': ensure => $ruby2_1_rubygem_hiera;
    'ruby2.1-rubygem-json_pure': ensure => $ruby2_1_rubygem_json_pure;
    'ruby2.1-rubygem-ruby-augeas': ensure => $ruby2_1_rubygem_ruby_augeas;
    'ruby2.1-rubygem-ruby-shadow': ensure => $ruby2_1_rubygem_ruby_shadow;
    'ruby2.1-stdlib': ensure => $ruby2_1_stdlib;
    'rubygem-facter': ensure => $rubygem_facter;
    'rubygem-hiera': ensure => $rubygem_hiera;
    'rubygem-puppet': ensure => $rubygem_puppet;
    'sudo': ensure => $sudo;
    'vim': ensure => $vim;
    'vim-data': ensure => $vim_data;
    'virt-what': ensure => $virt_what;
  }
}
