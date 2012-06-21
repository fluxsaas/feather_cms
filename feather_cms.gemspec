$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "feather_cms/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "feather_cms"
  s.version     = FeatherCms::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of FeatherCms."
  s.description = "TODO: Description of FeatherCms."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 3.2.6"
  # s.add_dependency "jquery-rails"

  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "sqlite3"
end
