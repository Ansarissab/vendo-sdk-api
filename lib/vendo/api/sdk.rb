# frozen_string_literal: true

require "httparty"
require_relative "sdk/version"
require "sdk/client"

module Vendo
  module Api
    module Sdk
      class Error < StandardError; end
      # Your code goes here...
    end

    client = Vendo::Api::Sdk::Client.new.authenticate("vendo@example.com", "vendo123")
  end
end
