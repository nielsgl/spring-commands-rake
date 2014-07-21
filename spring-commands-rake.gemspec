# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'spring/commands/rakemagic/version'

Gem::Specification.new do |spec|
  spec.name          = "spring-commands-rakemagic"
  spec.version       = Spring::Commands::Rakemagic::VERSION
  spec.authors       = ["Niels van Galen Last"]
  spec.email         = ["nvangalenlast@gmail.com"]
  spec.summary       = %q{rake command for spring}
  spec.description   = %q{rake command for spring}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
end
