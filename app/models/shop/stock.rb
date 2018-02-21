class Shop::Stock < ApplicationRecord
  belongs_to :book
  belongs_to :shop

  validates :value, numericality: { greater_than_or_equal_to: 0 }

  scope :with_books, -> (book_ids) { where(book_id: book_ids) }

  def initialize(attrs = {})
    super(attrs)
    self.value = 0 if value.nil?
  end

end
