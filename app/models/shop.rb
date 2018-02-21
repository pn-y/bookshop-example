class Shop < ApplicationRecord
  has_many :stocks, inverse_of: :shop
  has_many :books, through: :stocks

  has_many :not_empty_stocks, -> { where('value > 0') }, class_name: 'Shop::Stock', inverse_of: :shop
  has_many :books_in_stock, through: :not_empty_stocks, source: :book
end
