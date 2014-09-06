# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-powder/version'

Gem::Specification.new do |spec|
  spec.name          = "vagrant-powder"
  spec.version       = VagrantPlugins::Powder::VERSION
  spec.authors       = ["Joe Kratzat"]
  spec.email         = ["joe.kratzat@gmail.com"]
  spec.summary       = %q{Allows vagrant to handle the powder gem}
  spec.description   = %q{Makes sure that pow isn't running when you vagrant up}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency "powder"
end
