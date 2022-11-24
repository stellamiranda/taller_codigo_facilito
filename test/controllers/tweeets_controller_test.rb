# frozer_string_literal: true

require "test_helper"

class TweeetsControllerTest < ActionController::TestCase
  include Devise::Test::ControllerHelpers
  include Warden::Test::Helpers

  def setup
    @user = User.new(name: "Example User", username: "exampleuser", email: "test2@test.com", password: "password")
    @user.save!
    sign_in @user
    @tweeet = @user.tweeets.build(tweeet: "Lorem ipsum")
  end

  def test_create_tweeet
    sign_in @user
    
    # verify
    response = post( :create, params: { tweeet: { tweeet: @tweeet.tweeet , user_id: @tweeet.user_id } , :format => 'json'})

    #assetion
    assert_response :success
  end
end