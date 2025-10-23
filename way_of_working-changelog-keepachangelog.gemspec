# frozen_string_literal: true

require_relative 'lib/way_of_working/changelog/keepachangelog/version'

Gem::Specification.new do |spec|
  spec.name = 'way_of_working-changelog-keepachangelog'
  spec.version = WayOfWorking::Changelog::Keepachangelog::VERSION
  spec.authors = ['Tim Gentry']
  spec.email = ['52189+timgentry@users.noreply.github.com']

  spec.summary = 'Way of Working plugin for a Changelog using Keep a Changelog'
  spec.homepage = 'https://github.com/HealthDataInsight/way_of_working-changelog-keepachangelog'
  spec.license = 'MIT'
  spec.required_ruby_version = '>= 3.1.0'

  spec.metadata['allowed_push_host'] = 'https://rubygems.org'
  spec.metadata['rubygems_mfa_required'] = 'true'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/HealthDataInsight/way_of_working-changelog-keepachangelog'
  spec.metadata['changelog_uri'] = 'https://github.com/HealthDataInsight/way_of_working-changelog-keepachangelog/blob/main/CHANGELOG.md'

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

  spec.add_dependency 'way_of_working', '~> 2.0'
  spec.add_dependency 'zeitwerk', '~> 2.6.18'

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
