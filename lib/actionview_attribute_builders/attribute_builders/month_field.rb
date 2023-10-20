# frozen_string_literal: true

module ActionView
  module Helpers
    module AttributeBuilders # :nodoc:
      class MonthField < DatetimeField # :nodoc:
        private
          def format_datetime(value)
            value&.strftime("%Y-%m")
          end
      end
    end
  end
end
