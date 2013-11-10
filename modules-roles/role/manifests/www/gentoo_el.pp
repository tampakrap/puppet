class role::www::gentoo_el (
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
