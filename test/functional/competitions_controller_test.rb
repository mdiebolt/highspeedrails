require 'test_helper'

class CompetitionsControllerTest < ActionController::TestCase
  def setup
    @competition = Factory :competition
  end

  should "get new" do
    get :new

    assert_response :success
    assert_template 'new'
  end

  should "get show" do
    get :show, :id => @competition.id

    assert_response :success
    assert_template 'show'
  end

  should "get index" do
    get :index

    assert_response :success
    assert_template 'index'
  end

  should "have correct routes" do
    assert_routing({ :path => "/competitions/new", :method => :get }, { :controller => "competitions", :action => "new" })
    assert_routing({ :path => "/competitions/1", :method => :get }, { :controller => "competitions", :action => "show", :id => "1" })
    assert_routing({ :path => "/competitions", :method => :get }, { :controller => "competitions", :action => "index" })
  end
end
