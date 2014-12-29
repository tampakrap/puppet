class system::repositories {
  zypprepo {
    'repo-oss':
      baseurl => 'http://download.opensuse.org/distribution/13.2/repo/oss',
      enabled => 1,
      autorefresh => 1,
      gpgcheck => 0,
      priority => 99,
      keeppackages => 1,
      type => 'yast2';
    'repo-update-oss':
      baseurl => 'http://download.opensuse.org/update/13.2',
      enabled => 1,
      autorefresh => 1,
      gpgcheck => 0,
      priority => 99,
      keeppackages => 1,
      type => 'rpm-md';
  }
}
