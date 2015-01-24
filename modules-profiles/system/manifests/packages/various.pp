class system::packages::various (
  $etc_update,
  $libICE6,
  $libSM6,
  $libXt6,
  $perl,
  $sudo,
  $vim,
  $vim_data,
) {
  package {
    'etc-update': ensure => $etc_update;
    'libICE6': ensure => $libICE6;
    'libSM6': ensure => $libSM6;
    'libXt6': ensure => $libXt6;
    'perl': ensure => $perl;
    'sudo': ensure => $sudo;
    'vim': ensure => $vim;
    'vim-data': ensure => $vim_data;
  }
}
