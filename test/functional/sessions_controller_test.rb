require 'test_helper'

class SessionsControllerTest < ActionController::TestCase
  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    User.stubs(:authenticate).returns(nil)
    post :create
    assert_template 'new'
    assert_nil session['user_id']
  end

  def test_create_valid
    user = Factory :user

    User.stubs(:authenticate).returns(user)
    post :create
    assert_redirected_to root_url
    assert_equal user.id, session['user_id']
  end
end
