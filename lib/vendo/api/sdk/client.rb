# frozen_string_literal: true

# Vendo api client

module Vendo
  module Api
    module Sdk
      # This is the client base class
      class Client
        attr_reader :base_url

        def initialize
          self.base_url = "https://demo.getvendo.com/spree_oauth/token"
          @headers = { "Accept" => "application/json", "Content-Type" => "application/json" }
        end

        def authenticate(username, password)
          response = HTTParty.post(base_url,
                                   basic_auth: { user_name: username,
                                                 password: password,
                                                 grant_type: "password" },
                                   headers: @headers)
          JSON.parse(response.body)
        end

        def refresh_token(token)
          HTTParty.post(base_url,
                        body: { grant_type: "refresh_token", refresh_token: token }.to_json,
                        headers: @headers)
        end
      end
    end
  end
end
