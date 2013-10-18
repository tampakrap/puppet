class role::generic {
  include system::time
  include system::portage
  include service::ssh
  include service::puppet::agent
}
