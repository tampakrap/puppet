class system::repositories::sysmgmt_puppet (
  $baseurl,
  $enabled,
  $autorefresh,
  $gpgcheck,
  $priority,
  $keeppackages,
  $type,
) {
  zypprepo {'sysmgmt:puppet':
    baseurl => $baseurl,
    enabled => $enabled,
    autorefresh => $autorefresh,
    gpgcheck => $gpgcheck,
    priority => $priority,
    keeppackages => $keeppackages,
    type => $type,
  }
}
