# global settings
default['chef_habitat_wrapper']['accept_license'] = true
default['chef_habitat_wrapper']['install_url'] =
  'https://raw.githubusercontent.com/habitat-sh/habitat/master/components/hab/install.sh'
default['chef_habitat_wrapper']['create_user'] = true
default['chef_habitat_wrapper']['bldr_url'] = 'https://bldr.habitat.sh'
default['chef_habitat_wrapper']['remote_sup'] = '127.0.0.1:9632'
default['chef_habitat_wrapper']['remote_sup_http'] = '127.0.0.1:9631'

# hab_install settings
default['chef_habitat_wrapper']['install_action'] = 'install'

# hab_sup settings
default['chef_habitat_wrapper']['permanent_peer'] = false
default['chef_habitat_wrapper']['listen_ctl'] = nil
default['chef_habitat_wrapper']['listen_gossip'] = nil
default['chef_habitat_wrapper']['listen_http'] = nil
default['chef_habitat_wrapper']['org'] = 'default'
default['chef_habitat_wrapper']['peer'] = nil
default['chef_habitat_wrapper']['ring'] = nil
default['chef_habitat_wrapper']['sup_channel'] = 'stable'
default['chef_habitat_wrapper']['auto_update'] = false
default['chef_habitat_wrapper']['sup_auth_token'] = nil
default['chef_habitat_wrapper']['sup_action'] = 'run'

# hab_package settings
default['chef_habitat_wrapper']['packages'] = {}
default['chef_habitat_wrapper']['pkg_channel'] = 'stable'
default['chef_habitat_wrapper']['pkg_binlink'] = false
default['chef_habitat_wrapper']['pkg_action'] = 'install'

# hab_user_toml settings
default['chef_habitat_wrapper']['user_toml_action'] = 'create'

# hab_service settings
default['chef_habitat_wrapper']['services'] = {}
default['chef_habitat_wrapper']['service_strategy'] = 'none'
default['chef_habitat_wrapper']['service_topology'] = 'standalone'
default['chef_habitat_wrapper']['service_channel'] = 'stable'
default['chef_habitat_wrapper']['binding_mode'] = 'strict'
default['chef_habitat_wrapper']['service_action'] = 'load'

# hab_config settings
default['chef_habitat_wrapper']['config_action'] = 'apply'
