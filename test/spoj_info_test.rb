require 'minitest/autorun'
require 'rack/test'

require_relative '../spoj_info'

class SpojInfoApp
  set :environment, :test
end

def app
  SpojInfoApp
end

class SpojInfoTest < MiniTest::Unit::TestCase
  include Rack::Test::Methods

  def test_returns_json_content
    get '/problem/ARITH/lang/HASK'
    refute_nil last_response.headers['content-type'][%r{^application/json}]
  end

  def test_error_resonse_when_no_such_problem
    get '/problem/IDONTEXIST/lang/HASK'
    expected = { errors: ['No such problem: IDONTEXIST'] }.to_json
    assert_equal expected, last_response.body
  end
end
