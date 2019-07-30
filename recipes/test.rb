node.default['chef_habitat_wrapper']['packages'] = if node['platform_family'] == 'windows'
                                             {'core/7zip' => {} }
                                           else
                                             {
                                               'core/vim' => {'version' => '8.1.0577/20181219210623'},
                                               'core/zsh' => {}
                                             }
                                           end

node.default['chef_habitat_wrapper']['service_list'] = if node['platform_family'] == 'windows'
                                                         {}
                                                       else
                                                         {
                                                           'devoptimist/haproxy' => {
                                                             'strategy' => 'rolling',
                                                             'topology' => 'standalone',
                                                             'channel' => 'stable',
                                                             'group' => 'production',
                                                             'binding_mode' => 'relaxed',
                                                             'config' => {
                                                               'backend' => {
                                                                 'members' => [
                                                                   {'ip' => '127.0.0.1', 'port' => 8080}
                                                                 ]
                                                               }
                                                             }
                                                           },
                                                           'core/nginx' => {
                                                             'config' => {
                                                               'http' => {
                                                                 'listen' => {
                                                                   'port' => 81
                                                                 }
                                                               }
                                                             }
                                                           },
                                                           'core/elasticsearch' => {
                                                             'user_toml_config' => {
                                                               'runtime' => {
                                                                 'heapsize' => '2g'
                                                               }
                                                             }
                                                           }
                                                         }
                                                       end
include_recipe 'chef_habitat_wrapper::default'
