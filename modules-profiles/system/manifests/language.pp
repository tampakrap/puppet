class system::language {

  include system::language::gcc
  include system::language::python
  include system::language::ruby

  if ! defined(Facter::Fact["php"]) {
    facter::fact { 'php': value => 'false' }
  }

}
