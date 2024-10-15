# frozen_string_literal: true

require_relative 'keepachangelog/generators/init'
require_relative 'keepachangelog/paths'
require_relative 'keepachangelog/version'

module WayOfWorking
  module Changelog
    module Keepachangelog
      class Error < StandardError; end
      # Your code goes here...
    end
  end

  # This class defines the "init" parent command
  class Init < SubCommandBase
    register(Changelog::Keepachangelog::Generators::Init, 'changelog', 'changelog',
             <<~LONGDESC)
               Description:
                   This adds the Keep a Changelog v1.1 changelog to the project

               Example:
                   way_of_working init changelog

                   This will create:
                   CHANGELOG.md
             LONGDESC
  end
end
