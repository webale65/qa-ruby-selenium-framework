require "minitest/autorun"
require "httparty"

class UsersApiTest < Minitest::Test
  BASE_URL = "https://jsonplaceholder.typicode.com"

  def test_get_users_returns_success_status
    response = HTTParty.get("#{BASE_URL}/users")

    assert_equal 200, response.code
  end

  def test_get_users_returns_user_list
    response = HTTParty.get("#{BASE_URL}/users")
    users = response.parsed_response

    assert users.is_a?(Array)
    refute_empty users
  end
end