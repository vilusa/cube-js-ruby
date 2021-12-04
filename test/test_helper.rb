# frozen_string_literal: true

$LOAD_PATH.unshift File.expand_path('../lib', __dir__)
require 'cube_js'

require 'minitest/autorun'

module Test
  module Unit
    class TestCase < Minitest::Test
      def self.test(string, &block)
        define_method("test_#{string}", &block)
      end
    end
  end
end
