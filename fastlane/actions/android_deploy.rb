module Fastlane
  module Actions
    class AndroidDeployAction < Action
      def self.run(_params)
        UI.message 'Run AndroidDeployAction'
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(
            key: :apk,
          ),
          FastlaneCore::ConfigItem.new(
            key: :release_note,
            optional: true,
          ),
        ]
      end

      def self.authors
        'cordea'
      end

      def self.is_supported?(platform)
        platform == :android
      end
    end
  end
end
