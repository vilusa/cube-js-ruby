# frozen_string_literal: true

require 'faraday'
require 'faraday_middleware'

module CubeJS
  class Client
    attr_reader :base_url, :api_token

    def initialize(api_token: nil, base_url: nil)
      @base_url = base_url || ENV['CUBEJS_BASE_URL']
      @api_token = api_token || ENV['CUBEJS_API_TOKEN']

      # Check environment variables
      raise ArgumentError, 'Base URL Not Provided' if @base_url.nil?
      raise ArgumentError, 'API Token Not Provided' if @api_token.nil?

      connection
    end

    def connection
      @connection ||= Faraday.new base_url do |conn|
        conn.request  :json
        conn.response :json
        conn.headers[:Authorization] = api_token
        conn.adapter Faraday.default_adapter
      end
    end
  end
end
