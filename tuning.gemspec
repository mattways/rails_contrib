$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'tuning/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'tuning'
  s.version     = Tuning::VERSION
  s.authors     = ['Museways']
  s.email       = ['hello@mattways.com']
  s.homepage    = 'https://github.com/museways/tuning'
  s.summary     = 'Tuning for Rails.'
  s.description = 'Common used tools extracted into a gem.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*', 'MIT-LICENSE', 'Rakefile', 'README.rdoc']
  s.test_files = Dir['test/**/*']

  s.required_ruby_version = '>= 1.9.3'

  s.add_dependency 'rails', (ENV['RAILS_VERSION'] ? "~> #{ENV['RAILS_VERSION']}" : ['>= 3.1.0', '< 4.2.0'])

  if RUBY_PLATFORM == 'java'
    s.add_development_dependency 'activerecord-jdbcsqlite3-adapter', '~> 1.3'
    s.add_development_dependency 'jruby-openssl', '~> 0.9'
  else
    s.add_development_dependency 'sqlite3', '~> 1.3'
  end
end
