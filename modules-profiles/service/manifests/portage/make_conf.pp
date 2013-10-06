class service::portage::make_conf (
  $cflags = '-O2 -pipe',
  $jobs = $::processorcount + 1,
  $use = '',
  $features = '',
  $ruby_targets = '',
  $python_targets = '',
  $location = '',
) {

  # TODO:
  # - Return GENTOO_MIRRORS and SYNC based on location
  # - Return CFLAGS based on $::processor0

  portage::makeconf { 'cflags': content => $cflags }
  portage::makeconf { 'makeopts': content => "-j$jobs" }
  portage::makeconf { 'use': content => hiera_array(service::portage::make_conf::use) }
  portage::makeconf { 'features': content => hiera_array(service::portage::mak_conf::features) }
  portage::makeconf { 'ruby_targets': content => $ruby_targets }
  portage::makeconf { 'python_targets': content => $python_targets }

}
