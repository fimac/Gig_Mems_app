require 'test_helper'

class GigsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get gigs_index_url
    assert_response :success
  end

  test "should get show" do
    get gigs_show_url
    assert_response :success
  end

  test "should get new" do
    get gigs_new_url
    assert_response :success
  end

  test "should get edit" do
    get gigs_edit_url
    assert_response :success
  end

end
