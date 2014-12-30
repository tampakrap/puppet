class service::puppet::master {
  class { 'r10k':
    package_name              => 'rubygem-r10k',
    version                   => '1.4.0',
    install_options           => {'--from' => 'systemsmanagement:puppet'},
    remote                    => 'git://github.com/fork-bomb/puppet',
    provider                  => 'zypper',
    configfile                => '/etc/puppet/r10k.yaml',
    manage_configfile_symlink => 'true',
  }
}
