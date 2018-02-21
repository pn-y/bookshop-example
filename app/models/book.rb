class Book < ApplicationRecord
  has_many :stocks, class_name: "Shop::Stock", inverse_of: :book
  has_many :shops, through: :stocks

  has_many :not_empty_stocks, -> { where('value > 0') }, class_name: "Shop::Stock", inverse_of: :book
  has_many :shops_with_book, through: :not_empty_stocks, class_name: 'Shop', source: :shop
end
