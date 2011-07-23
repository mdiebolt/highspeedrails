require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  def setup
    @user = Factory.build(:user)
  end

  should "get new" do
    get :new
    assert_template 'new'
  end

  should "render new template for invalid data" do
    User.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  should "create user for valid data" do
    User.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to root_url
    assert_equal assigns['user'].id, session['user_id']
  end

  should "redirect to login with no user on edit" do
    get :edit, :id => "ignored"
    assert_redirected_to login_url
  end

  should "redirect to login with no user on update" do
    put :update, :id => "ignored"
    assert_redirected_to login_url
  end

  context "logged in" do
    setup do
      @controller.stubs(:current_user).returns(@user)
    end

    context "valid user" do
      setup do
        User.any_instance.stubs(:valid?).returns(true)
      end

      should "be able to update" do
        put :update, :id => "ignored"
        assert_redirected_to root_url
      end
    end

    context "invalid user" do
      setup do
        User.any_instance.stubs(:valid?).returns(false)
      end

      should "not be able to update" do
        put :update, :id => "ignored"
        assert_template 'edit'
      end
    end

    should "be able to edit own profile" do
      get :edit, :id => "ignored"
      assert_template 'edit'
    end
  end
end
