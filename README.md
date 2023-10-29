# Actionview::AttributeBuilders
> 🧪 ☣️ This gem is an experiment. Please do not use it for anything other than to explore the new concepts it brings into Rails.

**New!**

Visit the AttributeBuilders playground https://attributebuilders.julianpinzon.com to see all of this in action!

## 🧑🏽‍💻 Installation

Install the gem in your Rails application. Use:
```bash
$ bundle add actionview_attribute_builders
```

Or add it directly in your Gemfile

```ruby
gem 'actionview_attribute_builders', '~> 0.1.0'
```

And then execute:
```bash
$ bundle
```
## 🧑🏽‍🎨 Usage

**1. Create a custom form builder**

```ruby
# app/form_builders/example_form_builder.rb
 
class ExampleFormBuilder < ActionView::Helpers::FormBuilder
end
```

**2. Add a `text_field` method, overriding the one inherited from its parent (Rails' default)**

```ruby
# app/form_builders/example_form_builder.rb
 
class ExampleFormBuilder < ActionView::Helpers::FormBuilder
  def text_field(method, options = {})
    # ...
  end
end
```

**3. Use the appropriate `<helper>_attribute_builder` method for the type of field you're creating**

In this case `text_field_attribute_builder`

```ruby
# app/form_builders/example_form_builder.rb
 
class ExampleFormBuilder < ActionView::Helpers::FormBuilder
  def text_field(method, options = {})
    # 1. Retreive an instance of the `AttributeBuilders::TextField` class via the helper method
    attribute_builder = text_field_attribute_builder(method, options)
    # 2. Use the `html_attributes` method to retrieve the computed attributes. Commonly, `id`, `name`, `value` etc.
    html_attributes = attribute_builder.html_attributes
    # => { id: "user_name", name: "user[name]", value: "Julian" }
  end
end
```

**4. Render the HTML form element**

```ruby
# app/form_builders/example_form_builder.rb
 
class ExampleFormBuilder < ActionView::Helpers::FormBuilder
  def text_field(method, options = {})
    # ...
    # 3. Use the attributes to create the markup.
    
    # 3.1 For example, use a web component
    @template.content_tag("example-text-field", nil,  html_attributes.merge!(options))

    # 3.1 Or a ViewComponent
    @template.render(ExampleFieldComponent.new(html_attributes, options))
  end
end
```

**5. Use the new form builder in a template**

```erb
<%= form_with model: @user, builder: ExampleFormBuilder do |form| %>
  <%= form.text_field :name, required: true, label: "Name" %>
<% end %>
```

**6. Check the output in your browser's inspector to verify the new markup**

Note how, just like in a plain Rails application, the field includes the conventional `name`, `type` and `id` attributes based on the model used.

```html
<form action="/users" accept-charset="UTF-8" method="post"><input type="hidden" name="authenticity_token" value="3EgNNhL-HUI-2gxV_-9T_cEaT8p6b4CWtVbQMCeHlaKlfgd_p9sFuuLVKaDkUt3gEQKhc_d7YdR-TFzp-LiAuA" autocomplete="off">
  <example-text-field required="" type="text" name="user[name]" id="user_name"></example-text-field>
</form>

```

**6. Do this for \*every form helper**

`number_field`, `password_field`, `checkbox` etc. 

<small>* _every helper that's currently supported. Not all of them are done_<small>

## 🏞️ Concrete examples
> 👀 Images inside!

Visit the [examples](/examples) folder and follow the guides on how to use this with real components using Shoelace and Material Design Web Components.

## 🔧 API

This library exposes helpers that use _the exact same mechanics to create form input element attributes_ that Rails uses internally to create input elements that are compliant with `ActiveModel` and `ActiveRecord`conventions.

Check out the [lib/actionview_attribute_builders/attribute_builders_helper](AttributeBuildersHelper) for a list of all currently supported builders.

## ☢️ Status
This library is **not finished**. There are several things missing. For example:
1. Not all attribute builders have been extracted from Rails. There are currently 4 missing input fields and some extra missing helpers (like buttons and input submit fields)
2. Some helpers are far more complex than others and probably can't be used yet in a real scenario. For example, `<select>` tags (and similar elements) are harder because they are composed of not one but multiple html elements (`<select>` and `<option>`). This problem is yet to be solved.
3. The way the gem is loaded is a bit hacky and has a lot of garbage comments.

## 💎 What problem is this solving?
The short version is that Rails has a lot of conventions for form fields to work seamlessly with `ActiveModel` and `ActiveRecord`. However, these are not exposed to developers; they are deeply nested and coupled to the rendering of the actual markup. This makes creating new `FormBuilders` notoriously hard or even impossible in some cases. This forces developers to abandon Rails' conventions which is not desirable.

This gem's objective is to separate those responsibilities so developers can leverage Rails' conventions to build custom form elements and keep enjoying the advantages of [convention over configuraiton](https://rubyonrails.org/doctrine#convention-over-configuration).

I have written extensively about this problem. If you're interested, please read the following:
1. https://dev.julianpinzon.com/series/exploring-rails-forms
2. https://github.com/ViewComponent/view_component/discussions/420#discussioncomment-867525

## Contributing
The best way to contribute to this gem in its current state is:
1. to experiment with it and build custom `FormBuilder` classes.
2. start a discussion or issue on this repo

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
