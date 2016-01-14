require "relcy/base"

module Relcy
  class Client < Relcy::Base

    attr_accessor :api_key

    # Initializes a new Relcy Client
    #
    # @param api_key [String]
    # @return [Relcy::Client]
    def initialize(api_key)
      @api_key = api_key
    end

  end
end
