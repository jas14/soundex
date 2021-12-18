# frozen_string_literal: true

require "zeitwerk"
Zeitwerk::Loader.for_gem.setup

module Soundex
  class Error < StandardError; end
  # Your code goes here...
end