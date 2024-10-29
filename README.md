# WayOfWorking::Changelog::Keepachangelog

This is a plugin for the [Way of Working](https://github.com/HealthDataInsight/way_of_working) framework. It uses [keep a changelog](https://keepachangelog.com/en/1.1.0/) version 1.1.0. It has a well-defined structure that makes it an accessible format for people and tooling.

To quote from their website:

> Guiding Principles:
> * Changelogs are for humans, not machines.
> * There should be an entry for every single version.
> * The same types of changes should be grouped.
> * Versions and sections should be linkable.
> * The latest version comes first.
> * The release date of each version is displayed.
> * Mention whether you follow Semantic Versioning.

Grouping changes into a clear set of change types:

> * `Added` for new features.
> * `Changed` for changes in existing functionality.
> * `Deprecated` for soon-to-be removed features.
> * `Removed` for now removed features.
> * `Fixed` for any bug fixes.
> * `Security` in case of vulnerabilities.

Unlike automatic tools like github-changelog-generator, keep a changelog is a human-written, plain English summary of changes. It is **not** a commit log dump; please do not use it as such.

We recommend that you and your team update the changelog within your Pull Requests, which avoids the need to add to the changelog much later, at release. Please read the [keep a changelog](https://keepachangelog.com/en/1.1.0/) website. It's a single page with lots of important advice about the benefits and dangers of an incomplete changelog, but as it says in the FAQs, you can always revisit and improve a changelog over time.

## Installation

TODO: Replace `UPDATE_WITH_YOUR_GEM_NAME_IMMEDIATELY_AFTER_RELEASE_TO_RUBYGEMS_ORG` with your gem name right after releasing it to RubyGems.org. Please do not do it earlier due to security reasons. Alternatively, replace this section with instructions to install your gem from git if you don't plan to release to RubyGems.org.

Install the gem and add to the application's Gemfile by executing:

```bash
bundle add UPDATE_WITH_YOUR_GEM_NAME_IMMEDIATELY_AFTER_RELEASE_TO_RUBYGEMS_ORG
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install UPDATE_WITH_YOUR_GEM_NAME_IMMEDIATELY_AFTER_RELEASE_TO_RUBYGEMS_ORG
```

## Usage

To add a [keep a changelog v1.1.0](https://keepachangelog.com/en/1.1.0/) changelog to your project, use the following at the command line:

```bash
way_of_working init changelog
```

The Way of Working command line tool scaffolds a new changelog on new and longstanding projects.

On longstanding git-based projects, it reads the release tags and scaffolds a changelog with the expected changes of a [semantically versioned](https://semver.org) project. So, for example, a patch or minor version change won't contain a scaffolded `Removed` section.

Please use the links within the scaffolded changelog to view all the commits between releases to document historical changes.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/HealthDataInsight/way_of_working-changelog-keepachangelog. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/HealthDataInsight/way_of_working-changelog-keepachangelog/blob/main/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the WayOfWorking::Changelog::Keepachangelog project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/HealthDataInsight/way_of_working-changelog-keepachangelog/blob/main/CODE_OF_CONDUCT.md).
