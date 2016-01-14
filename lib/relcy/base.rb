require "addressable/uri"
require "relcy/version"
require "relcy/api"
require "relcy/utils"

module Relcy
  class Base
    include Relcy::Utils
    include Relcy::API
  end
end
