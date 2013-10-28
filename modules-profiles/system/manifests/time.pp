class system::time (
  $localtime,
  $clock,
  $clock_hctosys,
  $clock_systohc,
  $clock_args = [],
  $timezone_data_ensure,
  $eselect_timezone_keywords,
  $eselect_timezone_ensure,
) {

  file { '/etc/localtime':
    target => "/usr/share/zoneinfo/$localtime",
    ensure => 'link',
  }

  file { '/etc/conf.d/hwclock':
    content => template('system/hwclock.erb'),
    notify  => Service['hwclock'],
  }

  if $::is_virtual == 'true' {
    $enabled = false
  } else {
    $enabled = true
  }

  service { 'hwclock':
    ensure => $enabled ? { true => running, false => stopped },
    enable => $enabled,
  }

  portage::package { 'app-admin/eselect-timezone':
    keywords => $eselect_timezone_keywords,
    ensure   => $eselect_timezone_ensure,
    before   => Eselect['timezone'],
  }

  package { 'sys-libs/timezone-data': ensure => $timezone_data_ensure }

}
