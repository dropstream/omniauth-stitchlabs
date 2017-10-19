require "spec_helper"

describe OmniAuth::Strategies::Stitchlabs do
  def app
    lambda do |_env|
      [200, {}, ["Hello."]]
    end
  end
  let(:strategy) { Class.new(OmniAuth::Strategies::Stitchlabs) }

  describe "#client_options" do
    subject { strategy.new(app).options.client_options }

    it 'should have correct site' do
      expect(subject.site).to eq("https://api-pub.stitchlabs.com")
    end

    it 'should have correct authorize url' do
      expect(subject.authorize_url).to eq('/authorize')
    end

    it 'should have correct token url' do
      expect(subject.token_url).to eq('/oauth/token')
    end
  end
end