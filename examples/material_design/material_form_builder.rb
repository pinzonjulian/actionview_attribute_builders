class MaterialFormBuilder < ApplicationFormBuilder
  def text_field(method, options = {})
    attribute_builder = text_field_attribute_builder(method, options)
    html_attributes = attribute_builder.html_attributes
    @template.content_tag("md-outlined-text-field", nil,  html_attributes.merge!(options))
  end

  def number_field(method, options = {})
    attribute_builder = number_field_attribute_builder(method, options)
    html_attributes = attribute_builder.html_attributes
    @template.content_tag("md-outlined-text-field", nil,  html_attributes.merge!(options))
  end


  def color_field(method, options = {})
    attribute_builder = color_field_attribute_builder(method, options)
    html_attributes = attribute_builder.html_attributes
    @template.content_tag("md-outlined-text-field", nil,  html_attributes.merge!(options))
  end

  def email_field(method, options = {})
    attribute_builder = email_field_attribute_builder(method, options)
    html_attributes = attribute_builder.html_attributes
    @template.content_tag("md-outlined-text-field", nil,  html_attributes.merge!(options))
  end

  def search_field(method, options = {})
    attribute_builder = search_field_attribute_builder(method, options)
    html_attributes = attribute_builder.html_attributes
    @template.content_tag("md-outlined-text-field", nil,  html_attributes.merge!(options))
  end

  def tel_field(method, options = {})
    attribute_builder = tel_field_attribute_builder(method, options)
    html_attributes = attribute_builder.html_attributes
    @template.content_tag("md-outlined-text-field", nil,  html_attributes.merge!(options))
  end

  def password_field(method, options = {})
    attribute_builder = password_field_attribute_builder(method, options)
    html_attributes = attribute_builder.html_attributes
    @template.content_tag("md-outlined-text-field", nil,  html_attributes.merge!(options))
  end

  def url_field(method, options = {})
    attribute_builder = url_field_attribute_builder(method, options)
    html_attributes = attribute_builder.html_attributes
    @template.content_tag("md-outlined-text-field", nil,  html_attributes.merge!(options))
  end

  def switch(method, options = { }, checked_value = nil, unchecked_value = nil)
    attribute_builder = ActionView::Helpers::AttributeBuilders::CheckBox.new(object_name, method, @template, checked_value, options)
    html_attributes = attribute_builder.html_attributes

    @template.content_tag("md-switch", nil, html_attributes)
  end

  def check_box(method, options = { }, checked_value = nil, unchecked_value = nil)
    attribute_builder = checkbox_attribute_builder(method, options, checked_value)
    html_attributes = attribute_builder.html_attributes

    @template.content_tag("md-checkbox", nil, html_attributes)
  end

  # incomplete
  def button(value = nil, options = {}, &block)
    super
    @template.content_tag("md-filled-button", value, options)
  end
end