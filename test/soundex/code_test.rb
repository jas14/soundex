# frozen_string_literal: true

require 'test_helper'

module Soundex
  class CodeTest < Minitest::Test
    def test_from_pads
      assert_equal 'J000', Soundex::Code.from('Jo')
    end

    def test_from_truncates
      assert_equal 'A231', Soundex::Code.from('Asdfqwerty')
    end

    def test_from_capitalizes
      assert_equal 'J000', Soundex::Code.from('jo')
    end

    def test_from_coalesces
      assert_equal 'B200', Soundex::Code.from('bcccccccc')
    end

    def test_schwitzgebel
      assert_equal Soundex::Code.from('Schwitzgebel'), Soundex::Code.from('Switsgable')
    end
  end
end
