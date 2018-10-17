# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.


## Setup

1. Fork & Clone
2. Run `bundle install` to install dependencies
3. Create `config/database.yml` by copying `config/database.example.yml`
4. Create `config/secrets.yml` by copying `config/secrets.example.yml`
5. Run `bin/rake db:reset` to create, load and seed db
6. Create .env file based on .env.example
7. Sign up for a Stripe account
8. Put Stripe (test) keys into appropriate .env vars
9. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>


## Functional Requirements implemented during the project:

### Feature: Sold Out Badge
* When a product is 0, sold out badge should be displayed on the product list page

### Feature: Admin Categories
* Admin users can list and create new categories
* Admins can add new products using the new category

### Feature: User Authentication
* As a Visitor I can go to the registration page from any page in order to create an account
* As a Visitor I can sign up for a user account with my e-mail, password, first name and last name
* As a Visitor I can sign in using my e-mail and password
* As a User I can log out from any page
* As a User I cannot sign up with an existing e-mail address (uniqueness validation)
* Passwords are not stored as plain text in the database. Instead, has_secure_password is used in the User model, leveraging the bcrypt gem

### Enhancement: Order Details Page
* The order page contains items, their image, name, description, quantities and line item totals
* The final amount for the order is displayed
* The email that was used to place the order is displayed

### Feature: Email Receipt
* The e-mail content should be (minimally) formatted with HTML
* It should list the total as well as each line item in the order
* The Order ID should be in the subject line

### Bug: Missing Admin Security
* User must enter HTTP auth login/password to access admin functionality

### Bug: Checking Out with Empty Cart
* When the cart is empty and the user goes to the carts#show page, display a friendly message about how it is empty and link to the home page

### Feature: Product Rating
* As a visitor I can view the overall rating of products as I browse the catalog
* As a visitor I can view the list of ratings and reviews when viewing the product detail
* As a logged in user I can rate & review a product in a single step
* As a logged in user I can delete a rating or review that I previously created

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe


## Screenshots

### Home Screen
!["Home Screen"](https://github.com/suganthi05/jungle-rails/blob/master/docs/01_home.png?raw=true)
### Product Sold Out Badge
!["Product Sold Out"](https://github.com/suganthi05/jungle-rails/blob/master/docs/02_Sold_out.png?raw=true)
### Product with zero quantity
!["Product with zero quantity"](https://github.com/suganthi05/jungle-rails/blob/master/docs/03_Quantity_Zero.png?raw=true)
### Add new categories
!["Add new categories"](https://github.com/suganthi05/jungle-rails/blob/master/docs/04_Add_New_Categories.png?raw=true)
### Admin - Categories list
!["Admin - Categories list"](https://github.com/suganthi05/jungle-rails/blob/master/docs/05_Admin_Categories.png?raw=true)
### Sign Up form
!["Sign Up form"](https://github.com/suganthi05/jungle-rails/blob/master/docs/06_Sign_Up.png?raw=true)
### Order Cart
!["Order Cart"](https://github.com/suganthi05/jungle-rails/blob/master/docs/07_Order_Cart.png?raw=true)
### Stripe
!["Stripe"](https://github.com/suganthi05/jungle-rails/blob/master/docs/08_Stripe.png?raw=true)
### Order Confirmation
!["Order Confirmation"](https://github.com/suganthi05/jungle-rails/blob/master/docs/09_Order_Confirmation.png?raw=true)
### Admin Login
!["Admin Login"](https://github.com/suganthi05/jungle-rails/blob/master/docs/10_Admin_login.png?raw=true)
### Empty Cart
!["Empty Cart"](https://github.com/suganthi05/jungle-rails/blob/master/docs/11_Empty_Cart.png?raw=true)
### Review Screen
!["Review Screen"](https://github.com/suganthi05/jungle-rails/blob/master/docs/12_Review_Screen.png?raw=true)