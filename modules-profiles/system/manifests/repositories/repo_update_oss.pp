class system::repositories::repo_update_oss (
  $baseurl,
  $enabled,
  $autorefresh,
  $gpgcheck,
  $priority,
  $keeppackages,
  $type,
) {
  zypprepo {'repo-update-oss':
    baseurl => $baseurl,
    enabled => $enabled,
    autorefresh => $autorefresh,
    gpgcheck => $gpgcheck,
    priority => $priority,
    keeppackages => $keeppackages,
    type => $type,
  }
}
