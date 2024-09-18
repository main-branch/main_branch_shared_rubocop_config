# main-branch shared Rubocop configuration

This gem contains a shared Rubocop configuration to use for all projects in the
main-branch organization.

## Installation

Install the gem and add to the application's Gemfile by executing:

```shell
bundle add main_branch_shared_rubocop_config
```

If bundler is not being used to manage dependencies, install the gem by executing:

```shell
gem install main_branch_shared_rubocop_config
```

## Usage

To use the Rubocop configuration contained in this gem, add the following to your
project's Rubocop configuration file (usually .rubocop.yml):

```yaml
inherit_gem:
  main_branch_shared_rubocop_config: config/rubocop.yml
```

Configurations inherited in with `inerit_gem` will have the lowest precedence of
inheritance. Other directives in the above configuration file will supersede any of
the inherited configurations.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake
spec` to run the tests. You can also run `bin/console` for an interactive prompt that
will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To
release a new version, update the version number in `version.rb`, and then run
`bundle exec rake release`, which will create a git tag for the version, push git
commits and the created tag, and push the `.gem` file to
[rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/main-branch/main_branch_shared_rubocop_config. This project is
intended to be a safe, welcoming space for collaboration, and contributors are
expected to adhere to the [code of
conduct](https://github.com/main-branch/main_branch_shared_rubocop_config/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT
License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the MainBranchSharedRubocopConfig project's codebases, issue
trackers, chat rooms and mailing lists is expected to follow the [code of
conduct](https://github.com/main-branch/main_branch_shared_rubocop_config/blob/main/CODE_OF_CONDUCT.md).
