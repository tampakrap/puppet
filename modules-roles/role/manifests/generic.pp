class role::generic {
  include system::timezone
  include system::portage
  include service::ssh
  include service::facter
  include service::puppet::agent
}
