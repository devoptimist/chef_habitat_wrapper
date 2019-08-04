module ChefHabitatWrapper
  module UtilsHelpers
    def param(arg, default=nil, sym=nil)
      arg.nil? || arg == '' ? default : sym ? arg == sym ? arg.to_sym : arg : arg
    end
    def reduce_ip(a,node)
      if a.nil? || a.empty?
        nil
      else
        h_ip = [
          node['ipaddress'],
          node['cloud']['public_ipv4_addrs'].first
        ]
        a - h_ip
      end
    end
  end
end
