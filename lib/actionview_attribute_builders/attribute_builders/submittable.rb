# frozen_string_literal: true

module ActionView
  module Helpers
    module AttributeBuilders # :nodoc:
      module Submittable # :nodoc:
        include ModelNaming

        private
          def submit_default_value
            object = convert_to_model(@object)
            key    = object ? (object.persisted? ? :update : :create) : :submit

            model = if object.respond_to?(:model_name)
              object.model_name.human
            else
              @object_name.to_s.humanize
            end

            defaults = []
            # Object is a model and it is not overwritten by as and scope option.
            if object.respond_to?(:model_name) && @object_name.to_s == model.downcase
              defaults << :"helpers.submit.#{object.model_name.i18n_key}.#{key}"
            else
              defaults << :"helpers.submit.#{@object_name}.#{key}"
            end
            defaults << :"helpers.submit.#{key}"
            defaults << "#{key.to_s.humanize} #{model}"

            I18n.t(defaults.shift, model: model, default: defaults)
          end
      end
    end
  end
end
