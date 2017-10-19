require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Stitchlabs < OmniAuth::Strategies::OAuth2

      option :client_options, {
        :authorize_url => '/authorize',
        :token_url => '/oauth/token',
        :site => 'https://api-pub.stitchlabs.com'
      }        
    end
  end
end
