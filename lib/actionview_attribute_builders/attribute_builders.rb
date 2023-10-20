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

module ActionView
  module Helpers # :nodoc:
    module AttributeBuilders # :nodoc:
      # extend ActiveSupport::Autoload
      #
      # eager_autoload do
      #   autoload :Base
      #   autoload :CheckBox
      #   autoload :ColorField
      #   autoload :DateField
      #   autoload :DatetimeField
      #   autoload :DatetimeLocalField
      #   autoload :EmailField
      #   autoload :FileField
      #   autoload :HiddenField
      #   autoload :Label
      #   autoload :MonthField
      #   autoload :NumberField
      #   autoload :RadioButton
      #   autoload :SearchField
      #   autoload :Select
      #   autoload :TelField
      #   autoload :TextArea
      #   autoload :TextField
      #   autoload :TimeField
      #   autoload :PasswordField
      #   autoload :RangeField
      #   autoload :UrlField
      #   autoload :WeekField
      # end
    end
  end
end
