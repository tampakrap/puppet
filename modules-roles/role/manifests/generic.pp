class role::generic {
  include system::timezone
  include system::portage
  include service::ssh
  include service::puppet::agent
}
