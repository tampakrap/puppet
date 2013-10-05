class service::portage::make_conf (
  $cflags = '-O2 -pipe',
  $makeopts = $::processorcount + 1,
  $use,
  $features,
  $ruby_targets,
  $python_targets,
  $location = '',
) {

  # TODO:
  # - Return GENTOO_MIRRORS and SYNC based on location
  # - Return CFLAGS based on $::processor0

  portage::makeconf { 'cflags': content => $cflags }
  portage::makeconf { 'makeopts': content => $makeopts }
  portage::makeconf { 'use': content => $use }
  portage::makeconf { 'features': content => $features }
  portage::makeconf { 'ruby_targets': content => $ruby_targets }
  portage::makeconf { 'python_targets': content => $python_targets }

}
