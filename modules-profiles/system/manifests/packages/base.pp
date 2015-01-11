class system::packages::base (
  $aaa_base,
  $acl,
  $adjtimex,
  $bash,
  $bzip2,
  $ca_certificates,
  $coreutils,
  $cpio,
  $cracklib,
  $cracklib_dict_full,
  $dbus_1,
  $dbus_1_x11,
  $device_mapper,
  $dhcpcd,
  $diffutils,
  $dirmngr,
  $dracut,
  $elfutils,
  $expat,
  $file,
  $file_magic,
  $filesystem,
  $fillup,
  $findutils,
  $fipscheck,
  $gawk,
  $gio_branding_openSUSE,
  $glib2_tools,
  $glibc,
  $glibc_locale,
  $gpg2,
  $grep,
  $gzip,
  $hardlink,
  $hwinfo,
  $info,
  $insserv_compat,
  $kbd,
  $kernel_default,
  $klogd,
  $kmod,
  $kmod_compat,
  $krb5,
  $libacl1,
  $libadns1,
  $libapparmor1,
  $libasm1,
  $libassuan0,
  $libattr1,
  $libaudit1,
  $libaugeas0,
  $libblkid1,
  $libbz2_1,
  $libcap2,
  $libcap_ng0,
  $libcom_err2,
  $libcrack2,
  $libcryptsetup4,
  $libcurl4,
  $libdbus_1_3,
  $libdw1,
  $libedit0,
  $libelf0,
  $libelf1,
  $libexpat1,
  $libffi4,
  $libfipscheck1,
  $libgcc_s1,
  $libgcrypt20,
  $libgio_2_0_0,
  $libglib_2_0_0,
  $libgmodule_2_0_0,
  $libgmp10,
  $libgobject_2_0_0,
  $libgpg_error0,
  $libidn11,
  $libkeyutils1,
  $libkmod2,
  $libksba8,
  $libldap_2_4_2,
  $liblua5_1,
  $liblzma5,
  $libmagic1,
  $libmodman1,
  $libmount1,
  $libmozjs_17_0,
  $libncurses5,
  $libncurses6,
  $libnl3_200,
  $libnl_config,
  $libopenssl1_0_0,
  $libp11_kit0,
  $libpcre1,
  $libpolkit0,
  $libpopt0,
  $libprocps3,
  $libproxy1,
  $libpth20,
  $libqrencode3,
  $libreadline6,
  $libsasl2_3,
  $libseccomp2,
  $libselinux1,
  $libsemanage1,
  $libsepol1,
  $libsgutils2_2,
  $libsmartcols1,
  $libsolv_tools,
  $libssh2_1,
  $libstdc__6,
  $libtasn1,
  $libtasn1_6,
  $libtirpc1,
  $libudev1,
  $libusb_0_1_4,
  $libusb_1_0_0,
  $libustr_1_0_1,
  $libutempter0,
  $libuuid1,
  $libwicked_0_6,
  $libwrap0,
  $libX11_6,
  $libX11_data,
  $libx86emu1,
  $libXau6,
  $libxcb1,
  $libxml2_2,
  $libz1,
  $libzio1,
  $libzypp,
  $mozilla_nspr,
  $ncurses_utils,
  $netcfg,
  $net_tools,
  $openssh,
  $openssl,
  $openSUSE_build_key,
  $openSUSE_release,
  $openSUSE_release_ftp,
  $p11_kit,
  $p11_kit_tools,
  $pam,
  $pam_config,
  $patterns_openSUSE_base,
  $perl_base,
  $perl_Bootloader,
  $permissions,
  $pigz,
  $pinentry,
  $pkg_config,
  $polkit,
  $polkit_default_privs,
  $procps,
  $rpcbind,
  $rpm,
  $sed,
  $sg3_utils,
  $shadow,
  $shared_mime_info,
  $suse_module_tools,
  $sysconfig,
  $sysconfig_netconfig,
  $systemd,
  $systemd_presets_branding_openSUSE,
  $systemd_sysvinit,
  $sysvinit_tools,
  $terminfo_base,
  $time,
  $udev,
  $update_alternatives,
  $util_linux,
  $util_linux_systemd,
  $wallpaper_branding_openSUSE,
  $which,
  $wicked,
  $wicked_service,
  $xz,
  $zypper
) {
  package {
    'aaa_base': ensure => $aaa_base;
    'acl': ensure => $acl;
    'adjtimex': ensure => $adjtimex;
    'bash': ensure => $bash;
    'bzip2': ensure => $bzip2;
    'ca-certificates': ensure => $ca_certificates;
    'coreutils': ensure => $coreutils;
    'cpio': ensure => $cpio;
    'cracklib': ensure => $cracklib;
    'cracklib-dict-full': ensure => $cracklib_dict_full;
    'dbus-1': ensure => $dbus_1;
    'dbus-1-x11': ensure => $dbus_1_x11;
    'device-mapper': ensure => $device_mapper;
    'dhcpcd': ensure => $dhcpcd;
    'diffutils': ensure => $diffutils;
    'dirmngr': ensure => $dirmngr;
    'dracut': ensure => $dracut;
    'elfutils': ensure => $elfutils;
    'expat': ensure => $expat;
    'file': ensure => $file;
    'file-magic': ensure => $file_magic;
    'filesystem': ensure => $filesystem;
    'fillup': ensure => $fillup;
    'findutils': ensure => $findutils;
    'fipscheck': ensure => $fipscheck;
    'gawk': ensure => $gawk;
    'gio-branding-openSUSE': ensure => $gio_branding_openSUSE;
    'glib2-tools': ensure => $glib2_tools;
    'glibc': ensure => $glibc;
    'glibc-locale': ensure => $glibc_locale;
    'gpg2': ensure => $gpg2;
    'grep': ensure => $grep;
    'gzip': ensure => $gzip;
    'hardlink': ensure => $hardlink;
    'hwinfo': ensure => $hwinfo;
    'info': ensure => $info;
    'insserv-compat': ensure => $insserv_compat;
    'kbd': ensure => $kbd;
    'kernel-default': ensure => $kernel_default;
    'klogd': ensure => $klogd;
    'kmod': ensure => $kmod;
    'kmod-compat': ensure => $kmod_compat;
    'krb5': ensure => $krb5;
    'libacl1': ensure => $libacl1;
    'libadns1': ensure => $libadns1;
    'libapparmor1': ensure => $libapparmor1;
    'libasm1': ensure => $libasm1;
    'libassuan0': ensure => $libassuan0;
    'libattr1': ensure => $libattr1;
    'libaudit1': ensure => $libaudit1;
    'libaugeas0': ensure => $libaugeas0;
    'libblkid1': ensure => $libblkid1;
    'libbz2-1': ensure => $libbz2_1;
    'libcap2': ensure => $libcap2;
    'libcap-ng0': ensure => $libcap_ng0;
    'libcom_err2': ensure => $libcom_err2;
    'libcrack2': ensure => $libcrack2;
    'libcryptsetup4': ensure => $libcryptsetup4;
    'libcurl4': ensure => $libcurl4;
    'libdbus-1-3': ensure => $libdbus_1_3;
    'libdw1': ensure => $libdw1;
    'libedit0': ensure => $libedit0;
    'libelf0': ensure => $libelf0;
    'libelf1': ensure => $libelf1;
    'libexpat1': ensure => $libexpat1;
    'libffi4': ensure => $libffi4;
    'libfipscheck1': ensure => $libfipscheck1;
    'libgcc_s1': ensure => $libgcc_s1;
    'libgcrypt20': ensure => $libgcrypt20;
    'libgio-2_0-0': ensure => $libgio_2_0_0;
    'libglib-2_0-0': ensure => $libglib_2_0_0;
    'libgmodule-2_0-0': ensure => $libgmodule_2_0_0;
    'libgmp10': ensure => $libgmp10;
    'libgobject-2_0-0': ensure => $libgobject_2_0_0;
    'libgpg-error0': ensure => $libgpg_error0;
    'libidn11': ensure => $libidn11;
    'libkeyutils1': ensure => $libkeyutils1;
    'libkmod2': ensure => $libkmod2;
    'libksba8': ensure => $libksba8;
    'libldap-2_4-2': ensure => $libldap_2_4_2;
    'liblua5_1': ensure => $liblua5_1;
    'liblzma5': ensure => $liblzma5;
    'libmagic1': ensure => $libmagic1;
    'libmodman1': ensure => $libmodman1;
    'libmount1': ensure => $libmount1;
    'libmozjs-17_0': ensure => $libmozjs_17_0;
    'libncurses5': ensure => $libncurses5;
    'libncurses6': ensure => $libncurses6;
    'libnl3-200': ensure => $libnl3_200;
    'libnl-config': ensure => $libnl_config;
    'libopenssl1_0_0': ensure => $libopenssl1_0_0;
    'libp11-kit0': ensure => $libp11_kit0;
    'libpcre1': ensure => $libpcre1;
    'libpolkit0': ensure => $libpolkit0;
    'libpopt0': ensure => $libopt0;
    'libprocps3': ensure => $libprocps3;
    'libproxy1': ensure => $libproxy1;
    'libpth20': ensure => $libpth20;
    'libqrencode3': ensure => $libqrencode3;
    'libreadline6': ensure => $libreadline6;
    'libsasl2-3': ensure => $libsasl2_3;
    'libseccomp2': ensure => $libseccomp2;
    'libselinux1': ensure => $libselinux1;
    'libsemanage1': ensure => $libsemanage1;
    'libsepol1': ensure => $libsepol1;
    'libsgutils2-2': ensure => $libsgutils2_2;
    'libsmartcols1': ensure => $libsmatcols1;
    'libsolv-tools': ensure => $libsolv_tools;
    'libssh2-1': ensure => $libssh2_1;
    'libstdc++6': ensure => $libstdc__6;
    'libtasn1': ensure => $libtasn1;
    'libtasn1-6': ensure => $libtasn1_6;
    'libtirpc1': ensure => $libtirpc1;
    'libudev1': ensure => $libudev1;
    'libusb-0_1-4': ensure => $libusb_0_1_4;
    'libusb-1_0-0': ensure => $libusb_1_0_0;
    'libustr-1_0-1': ensure => $libustr_1_0_1;
    'libutempter0': ensure => $libutempter0;
    'libuuid1': ensure => $libuuid1;
    'libwicked-0-6': ensure => $libwicked_0_6;
    'libwrap0': ensure => $libwrap0;
    'libX11-6': ensure => $libX11_6;
    'libX11-data': ensure => $libX11_data;
    'libx86emu1': ensure => $libx86emu1;
    'libXau6': ensure => $libXau6;
    'libxcb1': ensure => $libxcb1;
    'libxml2-2': ensure => $libxml2_2;
    'libz1': ensure => $libz1;
    'libzio1': ensure => $libzio1;
    'libzypp': ensure => $libzypp;
    'mozilla-nspr': ensure => $mozilla_nspr;
    'ncurses-utils': ensure => $ncurses_utils;
    'netcfg': ensure => $netcfg;
    'net-tools': ensure => $net_tools;
    'openssh': ensure => $openssh;
    'openssl': ensure => $openssl;
    'openSUSE-build-key': ensure => $openSUSE_build_key;
    'openSUSE-release': ensure => $openSUSE_release;
    'openSUSE-release-ftp': ensure => $openSUSE_release_ftp;
    'p11-kit': ensure => $p11_kit;
    'p11-kit-tools': ensure => $p11_kit_tools;
    'pam': ensure => $pam;
    'pam-config': ensure => $pam_config;
    'patterns-openSUSE-base': ensure => $patterns_openSUSE_base;
    'perl-base': ensure => $perl_base;
    'perl-Bootloader': ensure => $perl_Bootloader;
    'permissions': ensure => $permissions;
    'pigz': ensure => $pigz;
    'pinentry': ensure => $pinentry;
    'pkg-config': ensure => $pkg_config;
    'polkit': ensure => $polkit;
    'polkit-default-privs': ensure => $polkit_default_privs;
    'procps': ensure => $procps;
    'rpcbind': ensure => $rpcbind;
    'rpm': ensure => $rpm;
    'sed': ensure => $sed;
    'sg3_utils': ensure => $sg3_utils;
    'shadow': ensure => $shadow;
    'shared-mime-info': ensure => $shared_mime_info;
    'suse-module-tools': ensure => $suse_module_tools;
    'sysconfig': ensure => $sysconfig;
    'sysconfig-netconfig': ensure => $sysconfig_netconfig;
    'systemd': ensure => $systemd;
    'systemd-presets-branding-openSUSE': ensure => $systemd_presets_branding_openSUSE;
    'systemd-sysvinit': ensure => $systemd_sysvinit;
    'sysvinit-tools': ensure => $sysvinit_tools;
    'terminfo-base': ensure => $terminfo_base;
    'time': ensure => $time;
    'udev': ensure => $udev;
    'update-alternatives': ensure => $update_alternatives;
    'util-linux': ensure => $util_linux;
    'util-linux-systemd': ensure => $util_linux_systemd;
    'wallpaper-branding-openSUSE': ensure => $wallpaper_branding_openSUSE;
    'which': ensure => $which;
    'wicked': ensure => $wicked;
    'wicked-service': ensure => $wicked_service;
    'xz': ensure => $xz;
    'zypper': ensure => $zypper;
  }
}
