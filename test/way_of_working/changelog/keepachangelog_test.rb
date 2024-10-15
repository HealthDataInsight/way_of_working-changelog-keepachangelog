# frozen_string_literal: true

require 'test_helper'

class WayOfWorking::Changelog::TestKeepachangelog < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::WayOfWorking::Changelog::Keepachangelog::VERSION
  end
end
