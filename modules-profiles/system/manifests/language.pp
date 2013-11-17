class system::language (
  $php_enabled,
) {

  include system::language::gcc
  include system::language::python
  include system::language::ruby

  facter::fact { 'php': value => $php_enabled }

  if $php_enabled == 'true' { include system::language::php }

}
