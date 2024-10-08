# frozen_string_literal: true

require_relative 'lib/main_branch_shared_rubocop_config/version'

Gem::Specification.new do |spec|
  spec.name = 'main_branch_shared_rubocop_config'
  spec.version = MainBranchSharedRubocopConfig::VERSION
  spec.authors = ['James Couball']
  spec.email = ['jcouball@yahoo.com']

  spec.summary = 'Shared Rubocop configuration for the main-branch organization'
  spec.description = spec.summary
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 3.0.0'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'

  spec.homepage = 'https://github.com/main-branch/main_branch_shared_rubocop_config'
  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  gemspec = File.basename(__FILE__)
  spec.files = IO.popen(%w[git ls-files -z], chdir: __dir__, err: IO::NULL) do |ls|
    ls.readlines("\x0", chomp: true).reject do |f|
      (f == gemspec) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'fuubar', '~> 2.5'
  spec.add_dependency 'rubocop', '~> 1.66'

  spec.add_development_dependency 'create_github_release', '~> 1.5'
  spec.metadata['rubygems_mfa_required'] = 'true'
end
