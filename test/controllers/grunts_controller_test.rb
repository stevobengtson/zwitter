require 'test_helper'

class GruntsControllerTest < ActionController::TestCase
  setup do
    @grunt = grunts(:one)
  end

  test 'should get index' do
    get :index
    assert_response :success
    assert_not_nil assigns(:grunts)
  end

  test 'should get new' do
    get :new
    assert_response :success
  end

  test 'should create grunt' do
    assert_difference('Grunt.count') do
      post :create, grunt: { message: @grunt.message, zombie_id: @grunt.zombie_id }
    end

    assert_redirected_to grunt_path(assigns(:grunt))
  end

  test 'should show grunt' do
    get :show, id: @grunt
    assert_response :success
  end

  test 'should get edit' do
    get :edit, id: @grunt
    assert_response :success
  end

  test 'should update grunt' do
    patch :update, id: @grunt, grunt: { message: @grunt.message, zombie_id: @grunt.zombie_id }
    assert_redirected_to grunt_path(assigns(:grunt))
  end

  test 'should destroy grunt' do
    assert_difference('Grunt.count', -1) do
      delete :destroy, id: @grunt
    end

    assert_redirected_to grunts_path
  end
end
