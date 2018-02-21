module ShopService
  extend self

  def mark_books_as_sold(shop, book_ids)
    Shop::Stock.transaction do
      shop.not_empty_stocks.with_books(book_ids).find_each do |s|
        s.update!(value: 0)
      end
    end
  end

end
