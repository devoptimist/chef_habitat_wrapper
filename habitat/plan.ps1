$pkg_name="chef_habitat_wrapper"
$pkg_origin="devoptimist"
$pkg_version="0.83.0"
$pkg_upstream_url="http://chef.io"
$pkg_build_deps=@("core/chef-dk")
$pkg_deps=@(
  "stuartpreston/chef-client" # https://github.com/habitat-sh/habitat/issues/6671
)
$scaffold_policy_name="Policyfile"
$scaffold_policyfile_path="$PLAN_CONTEXT/../" # habitat/../Policyfile.rb
