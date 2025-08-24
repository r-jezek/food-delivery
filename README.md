# Food Delivery
Online food delivery system made with Rails, Bootstrap for styling and PostgreSQL. Allows customer to browse restaurants and filter them based on several parameters and add menu items to cart from multiple restaurants.

This project is intented for showcase purposes only.

## Features
* **Filter restaurants** - Users can browse and filter restaurants based on city, name, cuisine and whether the restaurant is open
* **Browse menus** - Users are able to view the menu of a restaurant and add items to cart
* **Place order** - Users can confirm their cart and order the items

## Requirements
* Ruby
* Rails
* PostgreSQL

## Installation
1. Clone the repository
2. Install gems
```bash
bundle install
```
3. Create an .env file
```bash
# .env example
DB_USERNAME=<username>
DB_PASSWORD=<password>
```
4. Create and setup database
```bash
rails db:create
rails db:migrate
```
5. Seed the database
```bash
rails db:seed
```
6. Compile Bootstrap styling
```bash
rake assets:precompile
```
7. Start the server
```bash
rails server
```