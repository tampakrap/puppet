moduledir '/etc/puppet/environments/production/modules-base'

## forge

mod 'puppetlabs/concat',        '1.0.0'
mod 'puppetlabs/inifile',       '1.0.0'
mod 'puppetlabs/stdlib',        '4.1.0'
mod 'puppetlabs/ntp',           '3.0.0-rc1'
mod 'puppetlabs/vcsrepo',       '0.1.2'
mod 'ploperations/interval',    '0.0.1'
mod 'gentoo/portage',           '2.1.0'
mod 'domcleal/augeasproviders', '1.0.2'

## not in forge

mod 'ssh',      :git => 'git://github.com/tampakrap/puppet-ssh'
mod 'postfix',  :git => 'git://github.com/tampakrap/puppet-postfix'
mod 'git',      :git => 'git://github.com/tampakrap/puppet-git'
mod 'drupal',   :git => 'git://github.com/tampakrap/puppet-drupal'
mod 'hiera',    :git => 'git://github.com/tampakrap/puppet-hiera'

# mod 'zack/r10k'
mod 'r10k',
  :git => 'git://github.com/acidprime/r10k',
  :ref => 'v0.0.9'

## forks

# mod 'ploperations/puppet'
mod 'puppet',
  :git => 'git://github.com/tampakrap/puppet-puppet',
  :ref => 'pebkac'

# mod 'puppetlabs/apache'
mod 'apache',
  :git => 'git://github.com/gentoo/puppet-apache',
  :ref => 'gentoo_wip'

# mod 'puppetlabs/passenger'
mod 'passenger',
  :git => 'git://github.com/gentoo/puppet-passenger',
  :ref => 'gentoo_wip'

# mod 'puppetlabs/ruby'
mod 'ruby',
  :git => 'git://github.com/gentoo/puppet-ruby',
  :ref => 'gentoo_wip'

# mod 'rodjek/logrotate'
mod 'logrotate',
  :git => 'git://github.com/tampakrap/puppet-logrotate',
  :ref => 'pebkac'

# vim: set ai sts=2 et tw=80 sw=2 ft=puppet:
