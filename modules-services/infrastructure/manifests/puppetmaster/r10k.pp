class infrastructure::puppetmaster::r10k {

  class r10k {
    configfile => 'puppet:///modules/infrastructure/etc/r10k.yaml'
  }

  include r10k::cron

}
