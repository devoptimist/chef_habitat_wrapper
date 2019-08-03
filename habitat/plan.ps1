$pkg_name="chef_habitat_wrapper"
$pkg_origin="devoptimist"
$pkg_version="0.83.0"
$pkg_upstream_url="http://chef.io"
$pkg_build_deps=@("core/chef-dk")
$pkg_deps=@(
  "core/cacerts"
  "stuartpreston/chef-client" # https://github.com/habitat-sh/habitat/issues/6671
)
$pkg_scaffolding="chef/scaffolding-chef-infra"
$scaffold_policy_name="base"
