# Policyfile.rb - Describe how you want Chef to build your system.
#
# For more information on the Policyfile feature, visit
# https://docs.chef.io/policyfile.html

# A name that describes what the system you're building with Chef does.
name 'chef_habitat_wrapper'

# Where to find external cookbooks:
default_source :supermarket

# run_list: chef-client will run these recipes in the order specified.
run_list 'chef_habitat_wrapper::default'
named_run_list :integration_test_run_list, 'chef_habitat_wrapper::test'

# Specify a custom source for a single cookbook:
cookbook 'chef_habitat_wrapper', path: '.'
cookbook 'habitat', github: 'chef-cookbooks/habitat', tag: 'v1.5.0'
