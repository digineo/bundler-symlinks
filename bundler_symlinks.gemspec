
Gem::Specification.new do |spec|
  spec.name          = "bundler-symlinks"
  spec.version       = "0.1.0"
  spec.authors       = ["Julian Kornberger"]
  spec.email         = ["jk+github@digineo.de"]

  spec.summary       = %q{Bundler plugin to create symlinks for Gems}
  spec.description   = %q{Bundler plugin to create symlinks for Gems}
  spec.homepage      = "https://github.com/digineo/bundler_symlinks"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")


  spec.metadata["homepage_uri"] = spec.homepage
  #spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  #spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = ["plugins.rb"]
end
