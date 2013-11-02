moduledir '/etc/puppet/environments/production/modules-base'

## forge

mod 'puppetlabs/concat',  '1.0.0'
mod 'puppetlabs/inifile', '1.0.0'
mod 'puppetlabs/stdlib',  '4.1.0'
mod 'puppetlabs/ntp',     '3.0.0-rc1'
mod 'gentoo/portage',     '2.1.0'
mod 'rodjek/logrotate',   '1.1.1'

## not in forge

mod 'ssh',     :git => 'git://github.com/tampakrap/puppet-ssh'
mod 'postfix', :git => 'git://github.com/tampakrap/puppet-postfix'

# mod 'zack/r10k'
mod 'r10k',
  :git => 'git://github.com/acidprime/r10k',
  :ref => '67c50b3fe5bd1ecc7a2704395fb6e19ef8674dc6'

## forks

# mod 'ploperations/puppet'
mod 'puppet',
  :git => 'git://github.com/tampakrap/puppet-puppet',
  :ref => 'pebkac'

# mod 'puppetlabs/apache'
mod 'apache',
  :git => 'git://github.com/tampakrap/puppet-apache',
  :ref => 'pebkac'

# mod 'puppetlabs/passenger'
mod 'passenger',
  :git => 'git://github.com/tampakrap/puppet-passenger',
  :ref => 'pebkac'

# vim: set ai sts=2 et tw=80 sw=2 ft=puppet:
