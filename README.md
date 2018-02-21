Company A has several book stores, each store have different amount of books in stock. Book is sold if the amount in stock equals to 0. Each book has a publisher.

You need to design JSON API to be able to:
1. Fetch list of stores which have available books from a particular publisher.
2. Mark list of books as sold for a particular shop.

Code should be tested. No UI, only JSON.

`rails db:setup`
then
1. Fetch list of stores which have available books from a particular publisher.
`curl -X GET -H "Content-Type: application/json" "hhtp://localhost:3000/api/v1/shops?q\[books_in_stock_publisher_matches\]=Bloomsberry"`
2. Mark list of books as sold for a particular shop.
`curl -i -X POST -H 'Content-Type: application/json' -d '{"book_ids":[1,2]}' http://localhost:3000/api/v1/shops/1/books/mark_as_sold`
