# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

first_shop = Shop.create
second_shop = Shop.create

first_bloomsbury_book = Book.create(publisher: 'Bloomsberry')
second_bloomsbury_book = Book.create(publisher: 'Bloomsberry')

first_faber_book = Book.create(publisher: 'Faber')
second_faber_book = Book.create(publisher: 'Faber')

first_pearson_book = Book.create(publisher: 'Pearson')

Shop::Stock.create(shop: first_shop, book: first_bloomsbury_book, value: 10)
Shop::Stock.create(shop: second_shop, book: second_bloomsbury_book, value: 0)

Shop::Stock.create(shop: second_shop, book: first_faber_book, value: 10)
Shop::Stock.create(shop: second_shop, book: second_faber_book, value: 42)

Shop::Stock.create(shop: first_shop, book: first_pearson_book, value: 3)
Shop::Stock.create(shop: second_shop, book: first_pearson_book, value: 3)
