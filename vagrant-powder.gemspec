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
  spec.description   = %q{Unlinks the current project in pow when you vagrant up.
    Then relinks on vagrant halt or destroy.}
  spec.homepage      = "https://github.com/joekr/vagrant-powder"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", '~> 10.1', '>= 10.1.1'

  spec.add_runtime_dependency "powder", '~> 0.2', '>= 0.2.1'
end
