require 'test_helper'

class Api::V1::ShopsControllerTest < ActionDispatch::IntegrationTest
  test "gets #index" do
    book = books(:first_bloomsbury_book)
    get api_v1_shops_url, { params: { q: { books_in_stock_publisher_eq: book.publisher } } }

    assert_response :success
    response_shop_ids = json_body['shops'].map { |s| s['id'] }
    book_shop_ids = book.shops_with_book_ids
    assert { response_shop_ids == book_shop_ids }
  end
end
