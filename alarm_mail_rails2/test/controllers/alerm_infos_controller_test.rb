require 'test_helper'

class AlermInfosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alerm_info = alerm_infos(:one)
  end

  test "should get index" do
    get alerm_infos_url
    assert_response :success
  end

  test "should get new" do
    get new_alerm_info_url
    assert_response :success
  end

  test "should create alerm_info" do
    assert_difference('AlermInfo.count') do
      post alerm_infos_url, params: { alerm_info: { alerm_time: @alerm_info.alerm_time, iiwake: @alerm_info.iiwake, kaisha_mail: @alerm_info.kaisha_mail, user_name: @alerm_info.user_name } }
    end

    assert_redirected_to alerm_info_url(AlermInfo.last)
  end

  test "should show alerm_info" do
    get alerm_info_url(@alerm_info)
    assert_response :success
  end

  test "should get edit" do
    get edit_alerm_info_url(@alerm_info)
    assert_response :success
  end

  test "should update alerm_info" do
    patch alerm_info_url(@alerm_info), params: { alerm_info: { alerm_time: @alerm_info.alerm_time, iiwake: @alerm_info.iiwake, kaisha_mail: @alerm_info.kaisha_mail, user_name: @alerm_info.user_name } }
    assert_redirected_to alerm_info_url(@alerm_info)
  end

  test "should destroy alerm_info" do
    assert_difference('AlermInfo.count', -1) do
      delete alerm_info_url(@alerm_info)
    end

    assert_redirected_to alerm_infos_url
  end
end
