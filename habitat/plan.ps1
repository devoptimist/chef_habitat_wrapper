$pkg_name="chef_habitat_wrapper"
$pkg_origin="devoptimist"
$pkg_version="1.5.0"
$pkg_upstream_url="http://chef.io"
$pkg_build_deps=@("core/chef-dk")
$pkg_scaffolding="chef/scaffolding-chef-infra"
$pkg_deps=@(
  "stuartpreston/chef-client/15.0.171/20190225114237" # https://github.com/habitat-sh/habitat/issues/6671
)
$scaffold_policy_name="Policyfile"
$scaffold_policyfile_path="$PLAN_CONTEXT/../" # habitat/../Policyfile.rb
