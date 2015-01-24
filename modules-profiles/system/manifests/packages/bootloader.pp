class system::packages::bootloader (
  $btrfsprogs,
  $gettext_runtime,
  $grub2,
  $grub2_i386_pc,
  $libcroco_0_6_3,
  $libext2fs2,
  $libfreetype6,
  $libfuse2,
  $liblzo2_2,
  $libpng16_16,
  $os_probero,
) {
  package {
    'btrfsprogs': ensure => $btrfsprogs;
    'gettext-runtime': ensure => $gettext_runtime;
    'grub2': ensure => $grub2;
    'grub2-i386-pc': ensure => $grub2_i386_pc;
    'libcroco-0_6-3': ensure => $libcroco_0_6_3;
    'libext2fs2': ensure => $libext2fs2;
    'libfreetype6': ensure => $libfreetype6;
    'libfuse2': ensure => $libfuse2;
    'liblzo2-2': ensure => $liblzo2_2;
    'libpng16-16': ensure => $libpng16_16;
    'os-prober': ensure => $os_prober;
  }
}
