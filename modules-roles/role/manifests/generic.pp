class role::generic {
  include system::time
  include system::portage
  include system::users
  include system::locale
  include system::language
  include system::man
  include service::cron
  include service::ssh
  include service::puppet::agent
  include service::mail
  include service::log
}
