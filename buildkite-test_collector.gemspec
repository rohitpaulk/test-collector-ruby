# frozen_string_literal: true

require_relative "lib/buildkite/test_collector/version"

Gem::Specification.new do |spec|
  spec.name          = "buildkite-test_collector"
  spec.version       = Buildkite::TestCollector::VERSION
  spec.authors       = ["Buildkite"]
  spec.email         = ["support+analytics@buildkite.com"]

  spec.summary       = "Track test executions and report to Buildkite Test Analytics"
  spec.homepage      = "https://github.com/buildkite/test-collector-ruby"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/buildkite/test-collector-ruby"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{\A(?:test|spec|features)/}) }
  end
  spec.require_paths = ["lib"]

  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.add_dependency "drb", "~> 2.0"

  spec.add_development_dependency "activesupport", ">= 4.2"
  spec.add_development_dependency "rspec-core", '~> 3.10'
  spec.add_development_dependency "rspec-expectations", '~> 3.10'
end
