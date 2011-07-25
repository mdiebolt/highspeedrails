require 'test_helper'

class SubmissionsControllerTest < ActionController::TestCase
  def setup
    @submission = Factory :submission
  end

  should "get new" do
    get :new, :competition_id => 1

    assert_response :success
    assert_not_nil assigns(:submission)
    assert_template 'new'
  end

  should "have correct routes" do
    assert_routing({ :path => "/competitions/1/submissions/new", :method => :get }, { :controller => "submissions", :action => "new", :competition_id => "1" })
  end
end
