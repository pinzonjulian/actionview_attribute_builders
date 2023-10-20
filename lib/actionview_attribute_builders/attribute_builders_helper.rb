module ActionviewAttributeBuilders
  module AttributeBuildersHelper
    def color_field_attribute_builder(method, options)
      ActionView::Helpers::AttributeBuilders::ColorField.new(object_name, method, @template, options)
    end

    def email_field_attribute_builder(method, options)
      ActionView::Helpers::AttributeBuilders::EmailField.new(object_name, method, @template, options)
    end

    def number_field_attribute_builder(method, options)
      ActionView::Helpers::AttributeBuilders::NumberField.new(object_name, method, @template, options)
    end

    def search_field_attribute_builder(method, options)
      ActionView::Helpers::AttributeBuilders::SearchField.new(object_name, method, @template, options)
    end

    def tel_field_attribute_builder(method, options)
      ActionView::Helpers::AttributeBuilders::TelField.new(object_name, method, @template, options)
    end

    def text_field_attribute_builder(method, options)
      ActionView::Helpers::AttributeBuilders::TextField.new(object_name, method, @template, options)
    end

    def password_field_attribute_builder(method, options)
      ActionView::Helpers::AttributeBuilders::PasswordField.new(object_name, method, @template, options)
    end

    def url_field_attribute_builder(method, options)
      ActionView::Helpers::AttributeBuilders::UrlField.new(object_name, method, @template, options)
    end

    def checkbox_attribute_builder(method, options, checked_value)
      ActionView::Helpers::AttributeBuilders::CheckBox.new(object_name, method, @template, checked_value, options)
    end
  end
end
