# frozen_string_literal: true

require_relative 'lib/cube_js/version'

Gem::Specification.new do |spec|
  spec.name          = 'cube_js'
  spec.version       = CubeJS::VERSION
  spec.authors       = ['Kemal AKIN']
  spec.email         = ['kmlakin97@gmail.com']

  spec.summary       = 'Cube.js Ruby REST Client'
  spec.description   = 'Cube.js Ruby REST Client'
  spec.homepage      = 'https://github.com/vilusa/cubejs-ruby'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/vilusa/cubejs-ruby'
  spec.metadata['changelog_uri'] = 'https://github.com/vilusa/cubejs-ruby/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'faraday', '~> 1.8'
  spec.add_runtime_dependency 'faraday_middleware', '~> 1.2'
  spec.add_runtime_dependency 'zeitwerk', '~> 2.5', '>= 2.5.1'
end
