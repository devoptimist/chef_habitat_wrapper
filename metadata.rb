name 'chef_habitat_wrapper'
maintainer 'Steve Brown'
maintainer_email 'sbrown@chef.io'
license 'Apache-2.0'
description 'Installs/Configures habitat'
long_description 'Installs/Configures habitat'
version '0.1.0'
chef_version '>= 13.0'
depends 'habitat'
%w(ubuntu debian redhat centos suse scientific oracle amazon opensuse opensuseleap windows).each do |os|
  supports os
end

issues_url 'https://github.com/devoptimist/chef_habitat_wrapper/issues'
source_url 'https://github.com/devoptimist/chef_habitat_wrapper'
