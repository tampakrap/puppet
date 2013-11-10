class webpage::test {

  include webservice::drupal

  if defined(Class['system::portage::webapp_config']) {
    webapp { 'www.test.com':
      appname    => 'drupal',
      appversion => $webservice::drupal::ensure,
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
