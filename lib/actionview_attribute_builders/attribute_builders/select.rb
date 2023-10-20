# frozen_string_literal: true

module ActionView
  module Helpers
    module AttributeBuilders # :nodoc:
      class Select < Base # :nodoc:
        def initialize(object_name, method_name, template_object, options, html_options)
          @html_options = html_options

          super(object_name, method_name, template_object, options)

          @html_options = @html_options.stringify_keys
          [:required, :multiple, :size].each do |prop|
            @html_options[prop.to_s] = @options.delete(prop) if @options.key?(prop) && !@html_options.key?(prop.to_s)
          end

          add_default_name_and_id(@html_options)
          @html_options["value"] = @options.fetch(:selected) { value() }
        end

        def html_attributes
          @html_options
        end

        def options
          return @options unless placeholder_required?(@html_options)

          raise ArgumentError, "include_blank cannot be false for a required field." if @options[:include_blank] == false
          @options[:include_blank] ||= true unless @options[:prompt]

          @options
        end

        private
          def placeholder_required?(html_options)
            # See https://html.spec.whatwg.org/multipage/forms.html#attr-select-required
            html_options["required"] && !html_options["multiple"] && html_options.fetch("size", 1).to_i == 1
          end
      end
    end
  end
end
