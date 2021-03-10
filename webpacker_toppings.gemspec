# frozen_string_literal: true

require_relative 'lib/webpacker_toppings/version'

Gem::Specification.new do |spec|
  spec.name        = 'webpacker_toppings'
  spec.version     = WebpackerToppings::VERSION
  spec.authors     = ['Dev-team Codeur']
  spec.email       = ['dev@codeur.com']
  spec.homepage    = 'https://github.com/codeur/webpacker_toppings'
  spec.summary     = 'Toolkit for Webpacker'
  spec.description = 'WebpackerToppings provides helpers for Webpacker'
  spec.license     = 'MIT'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/codeur/webpacker_toppings'
  spec.metadata['changelog_uri'] = 'https://github.com/codeur/webpacker_toppings/blob/main/CHANGELOG.md'

  spec.files = Dir['lib/**/*', 'MIT-LICENSE', 'Rakefile', 'README.md']

  spec.required_ruby_version = '~> 2.6'
  spec.add_dependency 'rails', '>= 6.0.3'
  spec.add_dependency 'webpacker', '~> 5.0'

  spec.add_development_dependency 'rubocop-codeur'
end
