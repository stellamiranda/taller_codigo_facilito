# frozen_string_literal: true

require "test_helper"

class TweeetTest < MiniTest::Test
  def setup
    @user = User.new(name: "Example User", username: "exampleuser", email: "test@test.com", password: "password")
    @tweeet = @user.tweeets.build(tweeet: "Lorem ipsum")
  end

  def test_valid
    @tweeet.tweeet = "Hello World"

    assert @tweeet.valid?
  end

end
