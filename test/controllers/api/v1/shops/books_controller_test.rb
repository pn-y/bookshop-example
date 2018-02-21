require 'test_helper'

class Api::V1::Shops::BooksControllerTest < ActionDispatch::IntegrationTest
  test 'posts #mark_as_sold' do
    shop = shops(:second_shop)

    assert { shop.books_in_stock.any? }

    ids = shop.books_in_stock_ids
    post mark_as_sold_api_v1_shop_books_url(shop), { params: { book_ids: ids } }

    assert_response :success
    assert { shop.books_in_stock.blank? }
  end
end
