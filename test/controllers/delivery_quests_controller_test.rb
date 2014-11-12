require 'test_helper'

class DeliveryQuestsControllerTest < ActionController::TestCase
  setup do
    @delivery_quest = delivery_quests(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:delivery_quests)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create delivery_quest" do
    assert_difference('DeliveryQuest.count') do
      post :create, delivery_quest: { description: @delivery_quest.description, reward: @delivery_quest.reward, title: @delivery_quest.title }
    end

    assert_redirected_to delivery_quest_path(assigns(:delivery_quest))
  end

  test "should show delivery_quest" do
    get :show, id: @delivery_quest
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @delivery_quest
    assert_response :success
  end

  test "should update delivery_quest" do
    patch :update, id: @delivery_quest, delivery_quest: { description: @delivery_quest.description, reward: @delivery_quest.reward, title: @delivery_quest.title }
    assert_redirected_to delivery_quest_path(assigns(:delivery_quest))
  end

  test "should destroy delivery_quest" do
    assert_difference('DeliveryQuest.count', -1) do
      delete :destroy, id: @delivery_quest
    end

    assert_redirected_to delivery_quests_path
  end
end