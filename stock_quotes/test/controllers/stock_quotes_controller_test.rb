require 'test_helper'

class StockQuotesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get stock_quotes_index_url
    assert_response :success
  end

end
