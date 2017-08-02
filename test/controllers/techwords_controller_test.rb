require 'test_helper'

class TechwordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @techword = techwords(:one)
  end

  test "should get index" do
    get techwords_url
    assert_response :success
  end

  test "should get new" do
    get new_techword_url
    assert_response :success
  end

  test "should create techword" do
    assert_difference('Techword.count') do
      post techwords_url, params: { techword: { definition: @techword.definition, name: @techword.name } }
    end

    assert_redirected_to techword_url(Techword.last)
  end

  test "should show techword" do
    get techword_url(@techword)
    assert_response :success
  end

  test "should get edit" do
    get edit_techword_url(@techword)
    assert_response :success
  end

  test "should update techword" do
    patch techword_url(@techword), params: { techword: { definition: @techword.definition, name: @techword.name } }
    assert_redirected_to techword_url(@techword)
  end

  test "should destroy techword" do
    assert_difference('Techword.count', -1) do
      delete techword_url(@techword)
    end

    assert_redirected_to techwords_url
  end
end
