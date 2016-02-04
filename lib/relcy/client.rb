require "relcy/base"
require "faraday"
require "faraday_middleware"
require "typhoeus"
require "typhoeus/adapters/faraday"

module Relcy
  class Client < Relcy::Base
    include Relcy::API

    def initialize(api_key, cache_store=nil)
      @connection = Faraday.new(:url => BASE_URL) do |conn|
        conn.request  :url_encoded

        conn.response :json, :content_type => /\bjson$/

        faraday.use FaradayMiddleware::Caching, cache_store if cache_store

        conn.adapter :typhoeus

        conn.params["api_key"] = api_key
      end
    end

  end
end
