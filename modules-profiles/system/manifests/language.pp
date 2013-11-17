class system::language {

  include system::language::gcc
  include system::language::python
  include system::language::ruby

  if ! defined(Class["system::language::php"]) {
    facter::fact { 'php': value => 'false' }
  }

}
