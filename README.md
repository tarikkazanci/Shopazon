
The project was built in HTML5, CSS and Rails.

I started with two models as "Store" and "Product" and associated them with one to many relationship so that Store has many products and products belongs to Store. Created controllers and views for them. Then I created third model "User" with Devise. I wanted to have an association between user and product in order to user to select from products and create an order. So I created "Order" join table to create many to many relationship between user and product so User can order whichever Product they want to order.


User Stories

As a user;

- I should be able to sign up, sign in and sign out
- I should be able to see my profile

- I should be able to see all stores
- I should be able to see all products   
- I should be able to create a store
- I should be able to edit and delete my store
- I should be able to create a product to my store
- I should be able to edit and delete my products
- I should be able to create an order selecting from all products
- I should be able to see my orders and its details
