# frozen_string_literal: true

# require "action_view/helpers/attribute_builders/checkable"

module ActionView
  module Helpers
    module AttributeBuilders # :nodoc:
      class CheckBox < Base # :nodoc:
        include Checkable

        def initialize(object_name, method_name, template_object, checked_value, options)
          @checked_value   = checked_value
          super(object_name, method_name, template_object, options)
        end

        def html_attributes
          options = @options.stringify_keys
          options["type"]     = "checkbox"
          options["value"]    = @checked_value
          
          options["checked"] = "checked" if input_checked?(options)

          if options["multiple"]
            add_default_name_and_id_for_value(@checked_value, options)
            options.delete("multiple")
          else
            add_default_name_and_id(options)
          end
          return options
        end

        private
          def checked?(value)
            case value
            when TrueClass, FalseClass
              value == !!@checked_value
            when NilClass
              false
            when String
              value == @checked_value
            else
              if value.respond_to?(:include?)
                value.include?(@checked_value)
              else
                value.to_i == @checked_value.to_i
              end
            end
          end
      end
    end
  end
end
