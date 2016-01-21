require "relcy/api/autocomplete"
require "relcy/api/search"
require "relcy/api/detail"
require "relcy/api/entity"
require "relcy/api/lookup"

module Relcy
  module API
    BASE_URL = "https://sap.relcy.com/v0/"

    include Relcy::API::Autocomplete
    include Relcy::API::Search
    include Relcy::API::Detail
    include Relcy::API::Entity
    include Relcy::API::Lookup
  end
end
