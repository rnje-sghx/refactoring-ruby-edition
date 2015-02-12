# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'refactoring/version'

Gem::Specification.new do |spec|
  spec.name          = 'Refactoring Ruby Edition'
  spec.version       = Refactoring::VERSION
  spec.authors       = ['Ranjeet Singh']
  spec.email         = ['ranjeetxsingh@gmail.com']
  spec.summary       = %q{Solutions to Refactoring: Ruby Edition Exercises}
  spec.description   = %q{My solution to exercises contained in Refactoring: Ruby Edition by Jay Fields, Shane Harvie, Martin Fowler, and Kent Beck.}
  spec.homepage      = 'https://github.com/raeoks/refactoring-ruby-edition'
  spec.license       = 'MIT'
  spec.files         = ['lib/refactoring.rb']
  spec.executables   = ['refactoring']
  spec.test_files    = ['tests/tests_helper.rb']
  spec.require_paths = ['lib']

  spec.add_dependency('rake')
end
