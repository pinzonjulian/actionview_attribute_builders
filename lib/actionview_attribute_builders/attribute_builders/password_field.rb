# frozen_string_literal: true

module ActionView
  module Helpers
    module AttributeBuilders # :nodoc:
      class PasswordField < TextField # :nodoc:
        def html_attributes
          @options = { value: nil }.merge!(@options)
          super
        end
      end
    end
  end
end
