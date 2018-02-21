class CreateShopStocks < ActiveRecord::Migration[5.1]
  def change
    create_table :shop_stocks do |t|
      t.references :book, foreign_key: true
      t.references :shop, foreign_key: true
      t.integer :value

      t.timestamps
    end
  end
end
