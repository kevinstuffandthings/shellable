# frozen_string_literal: true

lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "shellable/version"

Gem::Specification.new do |spec|
  spec.name = "shellable"
  spec.version = Shellable::VERSION
  spec.authors = ["Kevin McDonald"]
  spec.email = ["kevinstuffandthings@gmail.com"]
  spec.summary = "Open a REPL inside any Ruby object"
  spec.description = spec.summary
  spec.homepage = "https://github.com/kevinstuffandthings/shellable"
  spec.license = "MIT"

  spec.files = `git ls-files -z`.split("\x0")
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "yard"
end
