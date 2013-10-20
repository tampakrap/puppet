class role::generic {
  include system::time
  include system::portage
  include system::users
  include service::ssh
  include service::puppet::agent
  #include service::mail
}
