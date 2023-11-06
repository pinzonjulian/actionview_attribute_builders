# frozen_string_literal: true
require "action_view/helpers/attribute_builders/submittable"

module ActionView
  module Helpers
    module AttributeBuilders # :nodoc:
      class Submit # :nodoc:
        include Submittable

        attr_reader :value

        def initialize(value = nil, options = {}, object, object_name)
          @object_name = object_name
          @object = object
          @value = value
          @options = options

          @value, @options = nil, @value if @value.is_a?(Hash)
          @value ||= submit_default_value
        end

        def html_attributes
          @options
        end
      end
    end
  end
end
