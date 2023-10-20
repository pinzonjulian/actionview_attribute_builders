# frozen_string_literal: true

module ActionView
  module Helpers
    module AttributeBuilders # :nodoc:
      class DateField < DatetimeField # :nodoc:
        private
          def format_datetime(value)
            value&.strftime("%Y-%m-%d")
          end
      end
    end
  end
end
