require_relative 'lib/datafusion/version'

Gem::Specification.new do |spec|
  spec.name          = "datafusion"
  spec.version       = DataFusion::VERSION
  spec.authors       = ["Juan A. Martín Lucas"]
  spec.email         = ["dev@jaml.pro"]

  spec.summary       = 'Ruby wrapper for Apache Arrow DataFusion'
  spec.description   = 'Ruby wrapper for Apache Arrow DataFusion'
  spec.homepage      = 'https://github.com/j-a-m-l/datafusion-ruby'
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
end
