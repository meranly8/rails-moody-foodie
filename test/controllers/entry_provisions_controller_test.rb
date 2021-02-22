require "test_helper"

class EntryProvisionsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get entry_provisions_new_url
    assert_response :success
  end

  test "should get edit" do
    get entry_provisions_edit_url
    assert_response :success
  end

  test "should get show" do
    get entry_provisions_show_url
    assert_response :success
  end

  test "should get index" do
    get entry_provisions_index_url
    assert_response :success
  end
end
