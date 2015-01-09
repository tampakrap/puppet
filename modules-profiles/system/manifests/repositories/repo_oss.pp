class system::repositories::repo_oss (
  $baseurl,
  $enabled,
  $autorefresh,
  $gpgcheck,
  $priority,
  $keeppackages,
  $type,
) {
  zypprepo {'repo-oss':
    baseurl => $baseurl,
    enabled => $enabled,
    autorefresh => $autorefresh,
    gpgcheck => $gpgcheck,
    priority => $priority,
    keeppackages => $keeppackages,
    type => $type,
  }
}
