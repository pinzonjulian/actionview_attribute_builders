module ActionviewAttributeBuilders
  class Engine < ::Rails::Engine
    isolate_namespace ActionviewAttributeBuilders

    ActiveSupport.on_load(:action_view) do
      require "actionview_attribute_builders/attribute_builders"
      require "actionview_attribute_builders/attribute_builders_helper"
      ActionView::Helpers::FormBuilder.include(ActionviewAttributeBuilders::AttributeBuildersHelper)
    end
  end
end
