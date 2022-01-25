require "test_helper"

class UserTest < ActiveSupport::TestCase
  test "user with a valid email should be valid" do
    user = User.new(email: "test@email.com", password_digest: "password")
    assert user.valid?
  end

  test "user with an invalid email should be invalid" do
    user = User.new(email: "test.email.com", password_digest: "password")
    assert_not user.valid?
  end

  test "email should be unique" do
    otherUser = users(:one)
    user = User.new(otherUser.email, password: "password")
    assert_not user.valid?
  end
end
