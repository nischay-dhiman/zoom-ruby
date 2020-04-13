$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require "zoom-ruby/version"

Gem::Specification.new do |gem|

  gem.authors       = ['Nischay Dhiman']
  gem.email         = ['nischay.dhiman@gmail.com']
  gem.description   = %q{A Rails Engine for implementing the Zoom Web SDK with a frontend in ruby.}
  gem.summary       = %q{Zoom APIs and joining via Web SDK}
  gem.homepage      = 'https://github.com/nischay-dhiman/zoom-ruby'
  gem.authors       = ['Nischay Dhiman']
  gem.licenses      = ['MIT']

  gem.files         = `git ls-files`.split("\n")
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = 'zoom-ruby'
  gem.require_paths = ['lib']
  gem.version       = ZoomRuby::VERSION
  gem.required_ruby_version = '>=2.1.0'

  gem.add_dependency 'httparty'
  gem.add_dependency 'json'
  gem.add_dependency "rails", ">= 4.2.0"
end
