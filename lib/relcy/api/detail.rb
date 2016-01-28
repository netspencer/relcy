require "relcy/base"

module Relcy
  module API
    module Detail
      def detail(id, options = {})
        @connection.get "detail", { :id => id }.merge(options)
      end

      def load_card(id, options = {})
        @connection.get "entity", { :lookId => id }.merge(options)
      end
    end
  end
end
