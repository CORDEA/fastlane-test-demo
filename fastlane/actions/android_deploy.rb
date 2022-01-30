module Fastlane
  module Actions
    class AndroidDeployAction < Action
      def self.run(params)
        print 'Run AndroidDeployAction'
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
            key: :apk,
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
        platform == :android
      end
    end
  end
end
