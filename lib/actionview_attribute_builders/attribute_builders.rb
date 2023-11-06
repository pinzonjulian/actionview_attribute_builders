# frozen_string_literal: true
#
require_relative "attribute_builders/base"
require_relative "attribute_builders/checkable"
require_relative "attribute_builders/text_field"
require_relative "attribute_builders/datetime_field"

require_relative "attribute_builders/check_box"
require_relative "attribute_builders/color_field"
require_relative "attribute_builders/date_field"
require_relative "attribute_builders/datetime_local_field"
require_relative "attribute_builders/email_field"
require_relative "attribute_builders/file_field"
require_relative "attribute_builders/hidden_field"
require_relative "attribute_builders/label"
require_relative "attribute_builders/month_field"
require_relative "attribute_builders/number_field"
require_relative "attribute_builders/radio_button"
require_relative "attribute_builders/search_field"
require_relative "attribute_builders/select"
require_relative "attribute_builders/tel_field"
require_relative "attribute_builders/text_area"
require_relative "attribute_builders/time_field"
require_relative "attribute_builders/password_field"
require_relative "attribute_builders/range_field"
require_relative "attribute_builders/url_field"
require_relative "attribute_builders/week_field"

require_relative "attribute_builders/submittable"
require_relative "attribute_builders/button"
require_relative "attribute_builders/submit"

module ActionView
  module Helpers # :nodoc:
    module AttributeBuilders # :nodoc:
    end
  end
end
