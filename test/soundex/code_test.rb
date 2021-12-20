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

    def test_raises
      assert_raises(ArgumentError) { Soundex::Code.from('102 118!$*!(#') }
    end

    def test_national_archives_examples
      assert_equal 'L000', Soundex::Code.from('Lee')
      assert_equal 'W252', Soundex::Code.from('Washington')
      assert_equal 'P236', Soundex::Code.from('Pfister')
      assert_equal 'J250', Soundex::Code.from('Jackson')
      assert_equal 'T522', Soundex::Code.from('Tymczak')
    end
  end
end
