# frozen_string_literal: true

module ActionView
  module Helpers
    module AttributeBuilders # :nodoc:
      module Checkable # :nodoc:
        def input_checked?(options)
          if options.has_key?("checked")
            checked = options.delete "checked"
            checked == true || checked == "checked"
          else
            checked?(value)
          end
        end
      end
    end
  end
end
