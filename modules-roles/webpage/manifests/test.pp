class webpage::test {

  include drupal

  if defined(Class['system::portage::webapp_config']) {
    webapp { 'www.test.com':
      appname    => 'drupal',
      appversion => '6.28',
      server     => 'apache',
      user       => 'apache',
      group      => 'apache',
      require    => [
        Portage::Package['app-admin/webapp-config'],
        Portage::Package['www-apps/drupal'],
      ],
    }
  }

}
