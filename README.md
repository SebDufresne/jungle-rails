# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

## User Section

### Landing Page

Landing page, with an overview of all available products.

!["landing page"](https://github.com/SebDufresne/jungle-rails/blob/master/docs/front-page.png)

### Product Details

Displays details for a specific product.

!["product details"](https://github.com/SebDufresne/jungle-rails/blob/master/docs/product-details.png)

### Categories Menu

List all available categories.

!["categories menu"](https://github.com/SebDufresne/jungle-rails/blob/master/docs/categories-menu.png)

### Product by Category

List a subset of products based on a category selection.

!["product by category"](https://github.com/SebDufresne/jungle-rails/blob/master/docs/product-by-category.png)

### Checkout Page

Displays the content of the cart to proceed with order.

!["checkout page"](https://github.com/SebDufresne/jungle-rails/blob/master/docs/cart-page.png)

### Order Summary

Displays order summary, once order has been finalized.

!["order summary"](https://github.com/SebDufresne/jungle-rails/blob/master/docs/order-summary.png)

### About Us

Details about the e-commerce.

!["about us"](https://github.com/SebDufresne/jungle-rails/blob/master/docs/about-us.png)

## Admin Section

### Admin Menu

Access to the following sections is restricted through basic authentication.

!["admin menu"](https://github.com/SebDufresne/jungle-rails/blob/master/docs/admin-menu.png)

### Admin Dashboard

Overview of categories and products available.

!["admin dashboard"](https://github.com/SebDufresne/jungle-rails/blob/master/docs/admin-dashboard.png)

### Products Administration

Manage the available products.

!["admin products"](https://github.com/SebDufresne/jungle-rails/blob/master/docs/admin-products.png)

### New Product

Product creation page.

!["new product"](https://github.com/SebDufresne/jungle-rails/blob/master/docs/new-product.png)

### New Product Validation

Validations in place for each field of a new product.

!["new product validation"](https://github.com/SebDufresne/jungle-rails/blob/master/docs/new-product-validation.png)

### Categories Administration

Manage the available categories.

!["admin categories"](https://github.com/SebDufresne/jungle-rails/blob/master/docs/admin-categories.png)

### New Category

Category creation page.

!["new category"](https://github.com/SebDufresne/jungle-rails/blob/master/docs/new-category.png)

### Sales Administration

Manage the available sales. When a sale is active, a banner will appear on the site pages.

!["admin categories"](https://github.com/SebDufresne/jungle-rails/blob/master/docs/admin-categories.png)

### New Sale

Sale creation page.

!["new sale"](https://github.com/SebDufresne/jungle-rails/blob/master/docs/new-sale.png)

### Unit Tests

RSpec and Capybara unit and UI tests.

!["unit tests"](https://github.com/SebDufresne/jungle-rails/blob/master/docs/unit-tests.png)

## Dependencies

- Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
- PostgreSQL 9.x
- Stripe

## Tests
- Capybara
- RSpec

## Getting Started

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

## Current Limitations/Bugs/Future Features

- TO-DO: Add validation on creation so only one sale can be active at a time.
- TO-DO: Change displayed prices when sales are active.
- TO-DO: Add rspec tests for sale creations.
- TO-DO: Validate a category has at least one product before adding to the menu.
- TO-DO: Add fake information to About Us page.
- TO-DO: Add sales to the dashboard.
- TO-DO: Order products and categories, on admin pages.
