# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'npmdc/version'

Gem::Specification.new do |spec|
  spec.name          = 'npmdc'
  spec.version       = Npmdc::VERSION
  spec.platform      = Gem::Platform::RUBY
  spec.authors       = ['Emil Kashkevich']
  spec.email         = ['emil.kashkevich@gmail.com']
  spec.summary       = 'Check for missed dependencies of NPM packages.'
  spec.description   = 'Check for missed dependencies of NPM packages based on dependency list specified in package.json file.'
  spec.homepage      = 'https://github.com/lysyi3m/npmdc'
  spec.license       = 'MIT'
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'bin'
  spec.executables   = ['npmdc']
  spec.require_paths = ['lib']
  spec.required_ruby_version = '>= 2.2.2'
  spec.add_dependency 'activesupport', '~> 5.0', '>= 5.0.0.1'
  spec.add_dependency 'thor', '~> 0.19.4'
  spec.add_development_dependency 'bundler', '~> 1.13'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
end
