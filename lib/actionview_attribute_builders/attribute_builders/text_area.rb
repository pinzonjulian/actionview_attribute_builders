# frozen_string_literal: true

require "action_view/helpers/tags/placeholderable"

module ActionView
  module Helpers
    module AttributeBuilders # :nodoc:
      class TextArea < Base # :nodoc:
        include Tags::Placeholderable
        
        def html_attributes
          options = @options.stringify_keys
          add_default_name_and_id(options)
          
          if size = options.delete("size")
            options["cols"], options["rows"] = size.split("x") if size.respond_to?(:split)
          end

          options["value"] = options.delete("value") { value_before_type_cast }
          
          return options
        end
      end
    end
  end
end
