class system::portage::make_conf (
  $cflags,
  $emerge_default_opts,
  $makeopts = inline_template("-j<%= @processorcount.to_i+1 %>"),
  $use,
  $features,
  $portdir,
) {

  # TODO:
  # - Return GENTOO_MIRRORS and SYNC based on location
  # - Return CFLAGS based on $::processor0

  portage::makeconf {
    'cflags': content => $cflags;
    'emerge_default_opts': content => $emerge_default_opts;
    'makeopts': content => $makeopts;
    'use': content => hiera_array(system::portage::make_conf::use);
    'features': content => hiera_array(system::portage::make_conf::features);
    'portdir': content => $portdir;
  }

}
