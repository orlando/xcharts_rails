# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xcharts_rails/version'

Gem::Specification.new do |gem|
  gem.name          = "xcharts_rails"
  gem.version       = XchartsRails::VERSION
  gem.authors       = ["Orlando Del Aguila"]
  gem.email         = ["orlando@delagui.la"]
  gem.description   = %q{A gem to include Xcharts into Rails 4.0.0}
  gem.summary       = %q{A gem to include Xcharts into Rails 4.0.0}
  gem.homepage      = "https://github.com/orlando/xcharts_rails"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]
end
