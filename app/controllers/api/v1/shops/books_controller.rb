class Api::V1::Shops::BooksController < Api::V1::Shops::ApplicationController
  def mark_as_sold
    ShopService.mark_books_as_sold(resource_shop, params[:book_ids])
    head :no_content
  end
end
