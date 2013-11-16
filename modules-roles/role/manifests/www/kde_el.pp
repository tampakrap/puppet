class role::www::kde_el (
  $host,
  $target       = '',
  $directory    = '',
  $repo_url     = '',
  $repo_target  = '',
  $theme_url    = '',
  $theme_target = '',
) {

  webservice::drupal { $host:
    target       => $target,
    directory    => $directory,
    repo_url     => $repo_url,
    repo_target  => $repo_target,
    theme_url    => $theme_url,
    theme_target => $theme_target,
  }

}
