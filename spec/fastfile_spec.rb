describe 'Fastfile' do
  before do
    @ff = Fastlane::FastFile.new('./fastlane/Fastfile')
  end

  context 'ios' do
    it 'deploy' do
      expect(Fastlane::Actions::IosDeployAction).to receive(:run) do |arg|
        options = arg.values
        expect(options[:ipa]).to eq('/tmp/bar/baz.ipa')
        expect(options[:release_note]).to eq('foo')
      end

      @ff.runner.execute(:deploy, :ios, { ipa: '/tmp/bar/baz.ipa', release_note: 'foo' })
    end
  end

  context 'android' do
    it 'deploy' do
      expect(Fastlane::Actions::AndroidDeployAction).to receive(:run) do |arg|
        options = arg.values
        expect(options[:apk]).to eq('/tmp/bar/baz.apk')
        expect(options[:release_note]).to eq('foo')
      end

      @ff.runner.execute(:deploy, :android, { apk: '/tmp/bar/baz.apk', release_note: 'foo' })
    end
  end
end
