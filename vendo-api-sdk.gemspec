# frozen_string_literal: true

require_relative "lib/vendo/api/sdk/version"

Gem::Specification.new do |spec|
  spec.name = "vendo-api-sdk"
  spec.version = Vendo::Api::Sdk::VERSION
  spec.authors = ["Muhammad Zahid"]
  spec.email = ["zahidensari116@gmail.com"]

  spec.summary = "SDK wrapper around Vendo ecommerce api"
  spec.homepage = "https://github.com/Ansarissab/vendo-sdk-api"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Ansarissab/vendo-sdk-api"
  spec.metadata["changelog_uri"] = "https://github.com/Ansarissab/vendo-sdk-api/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty"
end
