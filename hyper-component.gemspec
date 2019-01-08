# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hyperloop/component/version'

Gem::Specification.new do |spec|
  spec.name          = 'hyper-component'
  spec.version       = Hyperloop::Component::VERSION
  spec.authors       = ['Mitch VanDuyn','Jan Biedermann']
  spec.email         = ['mitch@catprint.com', 'jan@kursator.com']
  spec.summary       = %q{Write advanced React components in Ruby.}
  spec.homepage      = 'http://ruby-hyperloop.org'
  spec.license       = 'MIT'
  # spec.metadata      = {
  #   "homepage_uri" => 'http://ruby-hyperloop.org',
  #   "source_code_uri" => 'https://github.com/ruby-hyperloop/hyper-component'
  # }

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(spec)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'actionview', '>= 4.0.0'
  spec.add_dependency 'hyper-react', Hyperloop::Component::VERSION
  spec.add_dependency 'hyperloop-config', Hyperloop::Component::VERSION
  spec.add_dependency 'react-rails', '>= 2.4.0', '< 2.5.0'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'hyper-spec', Hyperloop::Component::VERSION
  spec.add_development_dependency 'listen'
  spec.add_development_dependency 'mini_racer', '~> 0.2.4'
  spec.add_development_dependency 'opal', '>= 0.11.0', '< 0.12.0'
  spec.add_development_dependency 'opal-browser', '~> 0.2.0'
  spec.add_development_dependency 'rails', '>= 4.0.0'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec', '~> 3.7.0'
  spec.add_development_dependency 'rspec-steps', '~> 2.1.1'
  spec.add_development_dependency 'rubocop', '~> 0.51.0'
  spec.add_development_dependency 'sqlite3'
end
