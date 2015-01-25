class role::base {
  include system::packages
  include system::repositories
  include system::time
  include system::users
}
