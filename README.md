# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.


## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2
* PostgreSQL 9.x
* Stripe

## Features Built

* If prodcut has 0 quantity, display sold out badge.
* Admin User can create and view all categories.
* Admin User can add new products using newly built category.
* Restful routes are used for admin category, no unused routes are exposed.
* Admin routes have HTTP authentication.
* Admin controllers are extended from a base admin controller to inherit athentication filter.
* Registration, log-in, log-out.
* Bcrypt use for password.
* Order page contains information about order.
* Email is sent to user (if logged in) with order details, styled in HTML
* Users are displayed link to home page, if user trys to checkout empty cart.
* Product reviews used nested routing.
* Logged in users can leave reviews, ratings.
* Logged in users can delete review they created.
* A visitor to the website can view all reviews and average rating for product.


