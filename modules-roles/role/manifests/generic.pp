class role::generic {
  include service::portage
  include service::ssh
  include service::facter
  include service::puppet::agent
}
