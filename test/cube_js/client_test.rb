# frozen_string_literal: true

require 'test_helper'

class CubeJS::ClientTest < Test::Unit::TestCase

  test 'should with parameters' do
    assert CubeJS::Client.new api_token: 'API_TOKEN', base_url: 'https://api.example.com/v1'
  end

  test 'should with ENV variables' do
    test_case = proc {
      ENV['CUBEJS_BASE_URL'] = 'https://api.example.com/v1'
      ENV['CUBEJS_API_TOKEN'] = 'API_TOKEN'

      assert CubeJS::Client.new
    }

    test_case.call
  end

  test 'should get ArgumentError without base_url' do
    assert_raises ArgumentError, 'Base URL Not Provided' do
      CubeJS::Client.new api_token: 'API_TOKEN'
    end
  end

  test 'should get ArgumentError without api_token' do
    assert_raises ArgumentError, 'API Token Not Provided' do
      CubeJS::Client.new base_url: 'https://api.example.com/v1'
    end
  end

  test 'should get ArgumentError empty arguments' do
    assert_raises ArgumentError do
      CubeJS::Client.new
    end
  end
end
