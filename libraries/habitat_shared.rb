module Habitat
  module Shared
    HAB_VERSION = '0.83.0'.freeze
    LINUX_LAUNCHER_VERSION = '11055'.freeze
    WINDOWS_LAUNCHER_VERSION = '9106'.freeze
    WINDOWS_SERVICE_VERSION = '0.3.1'.freeze

    def hab_version
      HAB_VERSION
    end

    def hab_launcher_version
      if platform_family?('windows')
        WINDOWS_LAUNCHER_VERSION
      else
        LINUX_LAUNCHER_VERSION
      end
    end

    def hab_windows_service_version
      WINDOWS_SERVICE_VERSION
    end
  end
end
