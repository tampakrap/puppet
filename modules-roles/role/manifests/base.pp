class role::base {
  include system::language
  include system::locale
  include system::man
  include system::openrc
  include system::portage
  include system::profile
  include system::time
  include system::users
  include system::process
  include service::cron
  include service::ssh
  include service::puppet
  include service::mail
  include service::log
  include service::mlocate
}