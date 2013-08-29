require 'test_helper'

class QueryRunsControllerTest < ActionController::TestCase
  setup do
    @query_run = query_runs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:query_runs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create query_run" do
    assert_difference('QueryRun.count') do
      post :create, query_run: { data: @query_run.data }
    end

    assert_redirected_to query_run_path(assigns(:query_run))
  end

  test "should show query_run" do
    get :show, id: @query_run
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @query_run
    assert_response :success
  end

  test "should update query_run" do
    put :update, id: @query_run, query_run: { data: @query_run.data }
    assert_redirected_to query_run_path(assigns(:query_run))
  end

  test "should destroy query_run" do
    assert_difference('QueryRun.count', -1) do
      delete :destroy, id: @query_run
    end

    assert_redirected_to query_runs_path
  end
end
