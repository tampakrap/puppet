class system::portage::make_conf (
  $cflags,
  $makeopts = inline_template("<%= @processorcount.to_i+1 %>"),
  $use,
  $features,
  $ruby_targets,
  $python_targets,
  $portdir,
) {

  # TODO:
  # - Return GENTOO_MIRRORS and SYNC based on location
  # - Return CFLAGS based on $::processor0

  portage::makeconf {
    'cflags': content => $cflags;
    'makeopts': content => $makeopts;
    'use': content => hiera_array(system::portage::make_conf::use);
    'features': content => hiera_array(system::portage::make_conf::features);
    'ruby_targets': content => $ruby_targets;
    'python_targets': content => $python_targets;
    'portdir': content => $portdir;
  }

}
