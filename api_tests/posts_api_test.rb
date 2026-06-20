require "minitest/autorun"
require "httparty"
require "json"

class PostsApiTest < Minitest::Test
  BASE_URL = "https://jsonplaceholder.typicode.com"

  def test_get_posts_returns_success_status
    response = HTTParty.get("#{BASE_URL}/posts")

    assert_equal 200, response.code
  end

  def test_post_contains_expected_fields
    response = HTTParty.get("#{BASE_URL}/posts/1")
    post = response.parsed_response

    assert post.key?("id")
    assert post.key?("title")
    assert post.key?("body")
  end

  def test_create_post_returns_201
    body = {
      title: "QA Automation",
      body: "API Testing with HTTParty",
      userId: 1
    }

    response = HTTParty.post(
      "#{BASE_URL}/posts",
      body: body.to_json,
      headers: { "Content-Type" => "application/json" }
    )

    assert_equal 201, response.code
  end
end