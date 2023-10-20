require_relative "lib/actionview_attribute_builders/version"

Gem::Specification.new do |spec|
  spec.name        = "actionview_attribute_builders"
  spec.version     = ActionviewAttributeBuilders::VERSION
  spec.authors     = ["Julián Pinzón Eslava"]
  spec.email       = ["dev@julianpinzon.com"]
  spec.homepage    = "https://github.com/pinzonjulian/actionview_attribute_builders"
  spec.summary     = "Use Rails' attribute building capabilities to create custom form input elements"
  spec.license     = "MIT"


  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/pinzonjulian/actionview_attribute_builders"
  # spec.metadata["changelog_uri"] = "---: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 7.1.1"
end
