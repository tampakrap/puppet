class role::generic {
  include system::language
  include system::locale
  include system::man
  include system::portage
  include system::profile
  include system::time
  include system::users
  include service::cron
  include service::ssh
  include service::puppet::agent
  include service::mail
  include service::log
  include service::mlocate
}
