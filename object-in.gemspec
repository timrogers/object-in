# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'object-in/version'

Gem::Specification.new do |gem|
  gem.name          = "object-in"
  gem.version       = ObjectIn::VERSION
  gem.authors       = ["Tim Rogers"]
  gem.email         = ["tim@gocardless.com"]
  gem.description   = %q{A monkeypatch on Object which adds the instance method
"in?", which is Array#include? with the subject and object inverted.}
  gem.summary       = %q{A monkeypatch on Object which adds the instance method
"in?", which is Array#include? with the subject and object inverted.}
  gem.homepage      = "http://timrogers.github.com/#object-in"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rake"
end
