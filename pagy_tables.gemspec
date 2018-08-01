$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "pagy_tables/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "pagy_tables"
  s.version     = PagyTables::VERSION
  s.authors     = ["Craig Petterson"]
  s.email       = ["craig@calajo.co.uk"]
  s.homepage    = "https://github.com/JalisoCSP/pagy_tables"
  s.summary     = "Table wrapper for the Pagy gem."
  s.description = "Wrapping the fast, plain ruby pagination gem with an easily customisable table, with search, ordering, exports and CSS options"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.0"
  s.add_dependency "pagy", "~> 0.7.0"

  s.add_development_dependency "sqlite3"
end
