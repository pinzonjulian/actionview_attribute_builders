# frozen_string_literal: true
require "action_view/helpers/attribute_builders/submittable"

module ActionView
  module Helpers
    module AttributeBuilders # :nodoc:
      class Button # :nodoc:
        include Submittable

        attr_reader :value

        def initialize(value = nil, options = {}, object, object_name, template_object)
          @object_name = object_name
          @object = object
          @template_object = template_object
          @value = value
          @options = options

          case @value
          when Hash
            @options = @value
            @value = nil
          when Symbol
            @options = { name: @template_object.field_name(@value), id: @template_object.field_id(@value) }.merge!(@options.to_h)
            @value = nil
          end

          @value ||= submit_default_value

          formmethod = @options[:formmethod]
          if formmethod.present? && !/post|get/i.match?(formmethod) && !@options.key?(:name) && !@options.key?(:value)
            @options.merge! formmethod: :post, name: "_method", value: formmethod
          end
        end

        def html_attributes
          @options
        end
      end
    end
  end
end
