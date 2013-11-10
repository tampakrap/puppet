class webpage::www_gentoo_el_org (
  $host,
  $directory,
  $repo,
  $theme,
) {

  webservice::drupal { $host:
    directory => $directory,
    repo      => $repo,
    theme     => $theme,
  }

}
