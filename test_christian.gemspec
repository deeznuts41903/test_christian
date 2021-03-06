# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'test_christian/version'

Gem::Specification.new do |spec|
  spec.name          = "test_christian"
  spec.version       = TestChristian::VERSION
  spec.authors       = ["Chris"]
  spec.email         = ["kylepitcher03@gmail.com"]

  spec.summary       = %q{This is a test}
  spec.homepage      = "rubygems.org"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
end
