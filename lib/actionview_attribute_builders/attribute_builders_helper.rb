module ActionviewAttributeBuilders
  module AttributeBuildersHelper

    def checkbox_attribute_builder(method, options, checked_value)
      ActionView::Helpers::AttributeBuilders::CheckBox.new(object_name, method, @template, checked_value, options)
    end

    def collection_check_boxes_attribute_builder
      raise NotImplementedError
    end

    def collection_radio_buttons_attribute_builder
      raise NotImplementedError
    end

    def color_field_attribute_builder(method, options)
      ActionView::Helpers::AttributeBuilders::ColorField.new(object_name, method, @template, options)
    end

    def date_field_attribute_builder(method, options)
      ActionView::Helpers::AttributeBuilders::DateField.new(object_name, method, @template, options)
    end

    def date_select_attribute_builder
      raise NotImplementedError
    end

    def datetime_field_attribute_builder(method, options)
      ActionView::Helpers::AttributeBuilders::DatetimeField.new(object_name, method, @template, options)
    end

    def datetime_select_attribute_builder
      raise NotImplementedError
    end

    def email_field_attribute_builder(method, options)
      ActionView::Helpers::AttributeBuilders::EmailField.new(object_name, method, @template, options)
    end

    def file_field_attribute_builder(method, options)
      ActionView::Helpers::AttributeBuilders::FileField.new(object_name, method, @template, options)
    end

    # grouped_collection_select

    def hidden_field_attribute_builder(method, options)
      ActionView::Helpers::AttributeBuilders::HiddenField.new(object_name, method, @template, options)
    end

    def label_attribute_builder(method, content_or_options, options)
      ActionView::Helpers::AttributeBuilders::Label.new(object_name, method, @template, content_or_options, options)
    end

    def month_field_attribute_builder(method, options)
      ActionView::Helpers::AttributeBuilders::MonthField.new(object_name, method, @template, options)
    end

    def number_field_attribute_builder(method, options)
      ActionView::Helpers::AttributeBuilders::NumberField.new(object_name, method, @template, options)
    end

    def password_field_attribute_builder(method, options)
      ActionView::Helpers::AttributeBuilders::PasswordField.new(object_name, method, @template, options)
    end

    def radio_button_attribute_builder(method, tag_value, options)
      ActionView::Helpers::AttributeBuilders::RadioButton.new(object_name, method, @template, tag_value, options)
    end

    def range_field_attribute_builder(method, options)
      ActionView::Helpers::AttributeBuilders::RangeField.new(object_name, method, @template, options)
    end

    def search_field_attribute_builder(method, options)
      ActionView::Helpers::AttributeBuilders::SearchField.new(object_name, method, @template, options)
    end

    def select_attribute_builder(method, options, html_options)
      ActionView::AttributeBuilders::AttributeBuilders::Select.new(object, method, @template, options, html_options)
    end

    def tel_field_attribute_builder(method, options)
      ActionView::Helpers::AttributeBuilders::TelField.new(object_name, method, @template, options)
    end

    def text_area_attribute_builder(method, options)
      ActionView::Helpers::AttributeBuilders::TextArea.new(object_name, method, @template, options)
    end

    def text_field_attribute_builder(method, options)
      ActionView::Helpers::AttributeBuilders::TextField.new(object_name, method, @template, options)
    end

    def time_field_attribute_builder(method, options)
      ActionView::Helpers::AttributeBuilders::TimeField.new(object_name, method, @template, options)
    end

    def time_select_attribute_builder
      raise NotImplementedError
    end

    def time_zone_select_attribute_builder(method, options, html_options)
      ActionView::Helpers::AttributeBuilders::Select.new(object_name, method, @template, options, html_options)
    end

    def url_field_attribute_builder(method, options)
      ActionView::Helpers::AttributeBuilders::UrlField.new(object_name, method, @template, options)
    end

    def week_field_attribute_builder(method, options)
      ActionView::Helpers::AttributeBuilders::WeekField.new(object_name, method, @template, options)
    end

    def weekday_select_attribute_builder(method, options, html_options)
      ActionView::Helpers::AttributeBuilders::Select.new(object_name, method, @template, options, html_options)
    end

    def button_attribute_builder(value, options)
      ActionView::Helpers::AttributeBuilders::Button.new(value, options, object_name, @template)
    end

    def submit_attribute_builder(value, options)
      ActionView::Helpers::AttributeBuilders::Submit.new(value, options, object_name)
    end

  end
end
