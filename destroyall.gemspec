# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'destroyall/version'

Gem::Specification.new do |spec|
  spec.name          = "destroyall"
  spec.version       = Destroyall::VERSION
  spec.authors       = ["Alexandr Basan"]
  spec.email         = ["alexandr.basan@gmail.com"]
  spec.summary       = %q{Simple gem for quick add destroy all method for all models.}
  spec.description   = %q{Simple gem for quick add destroy all method for all models. This gem add simple method destroyall for all models for quick destroy all records in table.}
  spec.homepage      = "https://github.com/Proalab/gem_destroy_all"
  spec.license       = "MIT"
  spec.required_ruby_version = '>= 1.0'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
