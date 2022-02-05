module Fastlane
  module Actions
    class IosDeployAction < Action
      def self.run(_params)
        UI.message 'Run IosDeployAction'
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(
            key: :ipa,
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
        platform == :ios
      end
    end
  end
end
