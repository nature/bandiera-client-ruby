# encoding: utf-8

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

require 'bandiera/client/version'

Gem::Specification.new do |spec|
  spec.name          = 'bandiera-client'
  spec.version       = Bandiera::Client::VERSION
  spec.authors       = ['Springer Nature']
  spec.email         = ['npp-developers@macmillan.com']
  spec.description   = 'Bandiera is a simple, stand-alone feature flagging service that is not tied to any existing web framework or language. This is a client for talking to the web service.'
  spec.summary       = 'Simple feature flagging API client.'
  spec.homepage      = 'https://github.com/springernature/bandiera-client-ruby'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR)
  spec.test_files    = Dir.glob('spec/*_spec.rb')
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'webmock'
  spec.add_development_dependency 'rack-test'
  spec.add_development_dependency 'rack', '< 2.0.0' # NOTE for the time being, don't force us to use ruby 2.2.2 please.
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'pry'

  spec.add_dependency 'typhoeus'
  spec.add_dependency 'macmillan-utils'
end
