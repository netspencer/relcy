require "relcy/base"

module Relcy
  module API
    module Detail
      def detail(id, options = {})
        @connection.get "detail", { :id => id }
      end
    end
  end
end
