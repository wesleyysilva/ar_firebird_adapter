# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'ar_firebird_adapter'
  spec.version       = '1.1.0'
  spec.authors       = ['Fábio Rodrigues', 'Gernot Gradwohl']
  spec.email         = ['grnt.grdwhl@gmail.com']
  spec.summary       = 'ActiveRecord Firebird Adapter for Rails 5 and 6.'
  spec.homepage      = 'https://github.com/rails-firebird/ar_firebird_adapter/'
  spec.license       = 'MIT'

  spec.files = Dir['lib/**/*']
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '~> 3.0.0'

  spec.add_dependency 'fb', '~> 0.9.3'
  spec.add_dependency 'rails', '7.1.3.3'

  spec.add_development_dependency 'bundler', '~> 2.4.19'
  spec.add_development_dependency 'database_cleaner', '~> 1.6'
  spec.add_development_dependency 'pry-meta', '~> 0.0.10'
  spec.add_development_dependency 'rake', '~> 12.2'
  spec.add_development_dependency 'rspec', '~> 3.7'
end
