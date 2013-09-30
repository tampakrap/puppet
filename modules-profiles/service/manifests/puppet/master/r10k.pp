class service::puppet::master::r10k {

  include ::r10k
  include ::r10k::prerun_command

}
