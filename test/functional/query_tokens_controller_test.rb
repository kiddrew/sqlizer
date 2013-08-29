require 'test_helper'

class QueryTokensControllerTest < ActionController::TestCase
  setup do
    @query_token = query_tokens(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:query_tokens)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create query_token" do
    assert_difference('QueryToken.count') do
      post :create, query_token: {  }
    end

    assert_redirected_to query_token_path(assigns(:query_token))
  end

  test "should show query_token" do
    get :show, id: @query_token
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @query_token
    assert_response :success
  end

  test "should update query_token" do
    put :update, id: @query_token, query_token: {  }
    assert_redirected_to query_token_path(assigns(:query_token))
  end

  test "should destroy query_token" do
    assert_difference('QueryToken.count', -1) do
      delete :destroy, id: @query_token
    end

    assert_redirected_to query_tokens_path
  end
end
