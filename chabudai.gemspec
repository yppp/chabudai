$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "chabudai/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "chabudai"
  s.version     = Chabudai::VERSION
  s.authors     = ["yppp"]
  s.email       = ["StreetFighterIII.3rdstrike@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Chabudai."
  s.description = "TODO: Description of Chabudai."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.4"
  
  s.add_development_dependency "sqlite3"
end
