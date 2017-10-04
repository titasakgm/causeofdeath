require 'test_helper'

class DeathsControllerTest < ActionController::TestCase
  setup do
    @death = deaths(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deaths)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create death" do
    assert_difference('Death.count') do
      post :create, death: { age: @death.age, cod: @death.cod, d_cod: @death.d_cod, d_date: @death.d_date, pid13: @death.pid13, sex: @death.sex }
    end

    assert_redirected_to death_path(assigns(:death))
  end

  test "should show death" do
    get :show, id: @death
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @death
    assert_response :success
  end

  test "should update death" do
    patch :update, id: @death, death: { age: @death.age, cod: @death.cod, d_cod: @death.d_cod, d_date: @death.d_date, pid13: @death.pid13, sex: @death.sex }
    assert_redirected_to death_path(assigns(:death))
  end

  test "should destroy death" do
    assert_difference('Death.count', -1) do
      delete :destroy, id: @death
    end

    assert_redirected_to deaths_path
  end
end
