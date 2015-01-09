class system::repositories (
  $repo_oss,
  $repo_update_oss,
  $sysmgmt_puppet,
) {
  if $repo_oss {
    include system::repositories::repo_oss
  }

  if $repo_update_oss {
    include system::repositories::repo_update_oss
  }

  if $sysmgmt_puppet {
    include system::repositories::sysmgmt_puppet
  }
}
