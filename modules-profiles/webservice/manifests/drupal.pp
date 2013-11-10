class webservice::drupal (
  $keywords,
  $ensure,
  $use,
) {

  include webservice
  include system::language::php

  portage::package { 'www-apps/drupal':
    keywords => $keywords,
    ensure   => $ensure,
    use      => $use,
    require  => Package['dev-lang/php'],
  }

}
