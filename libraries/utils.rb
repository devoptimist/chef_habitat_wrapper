module ChefHabitatWrapper
  module UtilsHelpers
    def param(arg, default=nil, sym=nil)
      arg.nil? ? default : sym ? arg == sym ? arg.to_sym : arg : arg
    end
  end
end
