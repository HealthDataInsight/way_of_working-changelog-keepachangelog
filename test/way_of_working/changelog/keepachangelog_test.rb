# frozen_string_literal: true

require 'test_helper'

module WayOfWorking
  module Changelog
    class TestKeepachangelog < Minitest::Test
      def test_that_it_has_a_version_number
        refute_nil ::WayOfWorking::Changelog::Keepachangelog::VERSION
      end
    end
  end
end
