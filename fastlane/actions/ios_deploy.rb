module Fastlane
  module Actions
    class IosDeployAction < Action
      def self.run(params)
        print 'Run IosDeployAction'
      end

      def self.description
        ''
      end

      def self.details
        ''
      end

      def self.available_options
        [
          FastlaneCore::ConfigItem.new(
            key: :ipa,
            description: '',
          ),
          FastlaneCore::ConfigItem.new(
            key: :release_note,
            description: '',
            optional: true,
          ),
        ]
      end

      def self.category
        :beta
      end

      def self.return_value

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
