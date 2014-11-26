# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'xsd_explorer/version'

Gem::Specification.new do |spec|
  spec.name          = "xsd_explorer"
  spec.version       = XsdExplorer::VERSION
  spec.authors       = ["Leszek Zalewski"]
  spec.email         = ["leszek.zalewski@zalesz.com"]
  spec.summary       = %q{XML Schema definition relations explorer.}
  spec.description   = %q{XML Schema explorer in ruby - generate classes like RXSD gem and draw a proper graph from them. Try to build ActiveRecord like associations to prevent classes duplication, and to build proper model diagrams with ruby-graphviz.}
  spec.homepage      = "https://github.com/driv3r/xsd_explorer"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest"
  spec.add_development_dependency "coveralls"
end
