require 'test_helper'

class SearcherControllerTest < ActionDispatch::IntegrationTest
  test "should get search" do
    get searcher_search_url
    assert_response :success
  end

end
