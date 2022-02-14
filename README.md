# Star Wars Planets API

A very basic API for searching Star Wars Planets created with Ruby on Rails.

### 1. Installation

`bundle` 

### 2. Database migration

`rake db:migrate`

### 3. Database initialization with seed data

This will download all data from `https://swapi.dev/api/planets`

`rails db:seed`

### 4. Run

`bin/rails server`

The server will run in `http://localhost:8000`

## Things you may want to know:

### Ruby version 

`3.0.0`

### Rails version

`7.0.2.2`

### How to run the test suite

`bundle exec rspec spec --format documentation`

### How to review the code styling

This app was created using `rails new ... --api` and has generated code, you can test the app code with Robocop:

`bundle exec rubocop app`

## UI

Install, setup & run the `ui` project in order to query the API using an autocomplete control with items selection. 