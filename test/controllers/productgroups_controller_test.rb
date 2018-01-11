require 'test_helper'

class ProductgroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @productgroup = productgroups(:one)
  end

  test "should get index" do
    get productgroups_url
    assert_response :success
  end

  test "should get new" do
    get new_productgroup_url
    assert_response :success
  end

  test "should create productgroup" do
    assert_difference('Productgroup.count') do
      post productgroups_url, params: { productgroup: { description: @productgroup.description, food_group: @productgroup.food_group, min_weight: @productgroup.min_weight, name: @productgroup.name } }
    end

    assert_redirected_to productgroup_url(Productgroup.last)
  end

  test "should show productgroup" do
    get productgroup_url(@productgroup)
    assert_response :success
  end

  test "should get edit" do
    get edit_productgroup_url(@productgroup)
    assert_response :success
  end

  test "should update productgroup" do
    patch productgroup_url(@productgroup), params: { productgroup: { description: @productgroup.description, food_group: @productgroup.food_group, min_weight: @productgroup.min_weight, name: @productgroup.name } }
    assert_redirected_to productgroup_url(@productgroup)
  end

  test "should destroy productgroup" do
    assert_difference('Productgroup.count', -1) do
      delete productgroup_url(@productgroup)
    end

    assert_redirected_to productgroups_url
  end
end
