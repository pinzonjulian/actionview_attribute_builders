# frozen_string_literal: true

module ActionView
  module Helpers
    module AttributeBuilders # :nodoc:
      class HiddenField < TextField # :nodoc:
        def html_attributes
          @options[:autocomplete] = "off"
          super
        end
      end
    end
  end
end
