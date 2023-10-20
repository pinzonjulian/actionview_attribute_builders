# frozen_string_literal: true

module ActionView
  module Helpers
    module AttributeBuilders # :nodoc:
      class Label < Base # :nodoc:
        def initialize(object_name, method_name, template_object, content_or_options, options = nil)
          options ||= {}
          if content_or_options.is_a?(Hash)
            options.merge! content_or_options
          else
            @content = content_or_options
          end
          super(object_name, method_name, template_object, options)
        end

        attr_reader :content

        def html_attributes(&block)
          options = @options.stringify_keys
          name_and_id = options.dup

          if name_and_id["for"]
            name_and_id["id"] = name_and_id["for"]
          else
            name_and_id.delete("id")
          end

          add_default_name_and_id_for_value(options["value"], name_and_id)
          options.delete("index")
          options.delete("namespace")
          options["for"] = name_and_id["id"] unless options.key?("for")

          options
        end
      end
    end
  end
end
