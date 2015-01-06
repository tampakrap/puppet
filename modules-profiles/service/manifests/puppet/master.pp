class service::puppet::master {
  class { 'r10k':
    package_name              => 'ruby2.1-rubygem-r10k',
    version                   => latest,
    install_options           => ['--no-recommends', {'--from' => 'sysmgmt:puppet'}],
    remote                    => 'git://github.com/fork-bomb/puppet',
    provider                  => 'zypper',
    configfile                => '/etc/puppet/r10k.yaml',
    manage_configfile_symlink => 'true',
  }
}
