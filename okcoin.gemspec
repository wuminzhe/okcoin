# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'okcoin/version'

Gem::Specification.new do |spec|
  spec.name          = "okcoin"
  spec.version       = Okcoin::VERSION
  spec.authors       = ["Wu Minzhe"]
  spec.email         = ["wuminzhe@gmail.com"]

  spec.summary       = %q{Ruby wrapper for rest api of okcoin.cn}
  spec.description   = %q{名字等细节尽量与okcoin.cn保持一致，并包括最新的api}
  spec.homepage      = "https://github.com/wuminzhe/okcoin"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
end
