# frozen_string_literal: true

module Soundex
  class Code
    DIGIT_TO_CHAR = {
      0 => %w[A E I O U H W Y],
      1 => %w[B F P V],
      2 => %w[C G J K Q S X Z],
      3 => %w[D T],
      4 => %w[L],
      5 => %w[M N],
      6 => %w[R],
    }.freeze

    CHAR_TO_DIGIT = DIGIT_TO_CHAR.each_with_object({}) do |(digit, chars), h|
      chars.each { |char| h[char] = digit }
    end.freeze

    def self.from(str)
      # Discard all non-letter characters.
      str = str.gsub(/[^a-z]/i, '')

      # Encode each letter as a digit.
      digit_string = str.chars.inject('') do |acc, char|
        "#{acc}#{CHAR_TO_DIGIT[char.upcase]}"
      end

      # Coalesce adjacent duplicate digits.
      coalesced = digit_string.gsub(/(\d)\1+/, '\1')

      # Replace first digit with first letter of original string.
      # Remove all zeroes.
      prefixed = "#{str[0].upcase}#{coalesced[1..]}".gsub('0', '')

      # Pad with zeroes or truncate to get exactly 4 characters.
      prefixed.ljust(4, '0')[..3]
    end
  end
end
