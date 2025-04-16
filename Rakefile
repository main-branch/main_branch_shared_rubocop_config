# frozen_string_literal: true

# make a default taks that runs rubocop and builds the gem
task default: %i[rubocop build]

require 'bundler/gem_tasks'

# Make it so that calling `rake release` just calls `rake release:rubygems_push` to
# avoid creating and pushing a new tag.

Rake::Task['release'].clear
desc 'Customized release task to avoid creating a new tag'
task release: 'release:rubygem_push'

require 'rubocop/rake_task'

RuboCop::RakeTask.new
