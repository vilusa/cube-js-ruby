# frozen_string_literal: true

require 'zeitwerk'
loader = Zeitwerk::Loader.for_gem
loader.inflector.inflect 'cube_js' => 'CubeJS'
loader.setup

require_relative 'cube_js/version'

module CubeJS
  class Error < StandardError; end
  # Your code goes here...
end
