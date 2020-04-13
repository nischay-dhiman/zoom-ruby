$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require "zoom-ruby/version"

Gem::Specification.new do |gem|

  gem.add_dependency 'httparty', '~> 0.18'
  gem.add_dependency 'json', '>= 1.8'
  gem.add_dependency "rails", ">= 4.2.0"


  gem.authors       = ['Nischay Dhiman']
  gem.email         = ['nischay.dhiman@gmail.com']
  gem.description   = %q{A Rails Engine for implementing the Zoom Web SDK with a frontend in ruby.}
  gem.summary       = %q{Zoom APIs and joining via Web SDK}
  gem.homepage      = ''
  gem.licenses      = ['MIT']

  gem.files         = `git ls-files`.split("\n")
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = 'zoom-ruby'
  gem.require_paths = ['lib']
  gem.version       = ZoomRuby::VERSION
end