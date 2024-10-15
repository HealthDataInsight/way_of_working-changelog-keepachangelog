# frozen_string_literal: true

require 'way_of_working/cli'
require_relative 'keepachangelog/paths'
require 'zeitwerk'

loader = Zeitwerk::Loader.for_gem_extension(WayOfWorking::Changelog)
loader.setup

module WayOfWorking
  module Changelog
    module Keepachangelog
      class Error < StandardError; end
      # Your code goes here...
    end
  end

  module SubCommands
    # This reopens the "way_of_working init" sub command
    class Init
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
end
