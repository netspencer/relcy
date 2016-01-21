# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'relcy/version'

Gem::Specification.new do |spec|
  spec.name          = "relcy"
  spec.version       = Relcy::VERSION
  spec.authors       = ["Spencer Schoeben"]
  spec.email         = ["spencer@netspencer.com"]

  spec.summary       = "A Ruby interface for the Relcy API."
  spec.homepage      = "http://github.com/netspencer/relcy"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "addressable", "~> 2.3"
  spec.add_dependency "equalizer", "~> 0.0.11"
  spec.add_dependency "faraday", "~> 0.9"
  spec.add_dependency "typhoeus"
  spec.add_dependency "faraday_middleware", "~> 0.9"
  spec.add_dependency "hashie", "~> 3.4.3"
  spec.add_dependency "memoizable", "~> 0.4.0"
  spec.add_dependency 'naught', "~> 1.0"
  spec.add_dependency 'json', "~> 1.8"

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "pry", "~> 0.10.3"
end
