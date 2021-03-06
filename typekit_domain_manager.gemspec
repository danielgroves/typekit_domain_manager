# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'typekit_domain_manager/version'

Gem::Specification.new do |spec|
  spec.name          = "typekit_domain_manager"
  spec.version       = TypekitDomainManager::VERSION
  spec.authors       = ["Daniel Groves"]
  spec.email         = ["hello@danielgroves.net"]

  spec.summary       = "Easy domain control for TypeKit Kits."
  spec.description   = "A wrapper to allow for easy control of TypeKit Kit domain whitelists."
  spec.homepage      = "https://github.com/danielgroves/TypeKit-Domain-Manager-Gem"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_runtime_dependency "typekit-client", "~> 0.0"
end
