moduledir '/etc/puppet/environments/production/modules-base'

## forge

mod 'puppetlabs/concat',  '1.0.0'
mod 'puppetlabs/inifile', '1.0.0'
mod 'puppetlabs/stdlib',  '4.1.0'

## not in forge

# mod 'zack/r10k'
mod 'r10k',
  :git => 'git://github.com/acidprime/r10k',
  :ref => '67c50b3fe5bd1ecc7a2704395fb6e19ef8674dc6'

mod 'ssh', :git => 'git://github.com/tampakrap/puppet-ssh'

## forks

# mod 'gentoo/portage'
mod 'portage',
  :git => 'git://github.com/tampakrap/puppet-portage',
  :ref => 'pebkac'

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
