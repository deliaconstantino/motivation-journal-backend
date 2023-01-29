# Motivation Journal

Motivation Journal is a journaling app that allows users to create, read, write, and delete journal entries. It leverages a Next.js client with a Ruby on Rails API server and fetches inspirational quotes from a third party API.

This repo is the Rails API server.

The client is built with Next.js and can be found at [motivation-journal](https://github.com/deliaconstantino/motivation-journal).

* Ruby version: '2.7.1'

* Rails version: '~> 6.1.3', '>= 6.1.3.1'

## Configuration and Database

* To get started with Motivation Journal, fork and clone this app. Then run `bundle install`.

* As this app uses a Postgres server, run `rails db:create` then `rails db:migrate` to create a database and migrations

* Run `rails db:seed` to seed the database

* Create a `.env` file with a JWT secret and Client URL domain:

```
# .env

JWT_SECRET="add your secret here"
CLIENT_URL_DOMAIN="add local client url, for example: localhost:3000"
```

* Finally fire up the Rails server and your backend should be all set.

* Make sure to keep Rails server running while the app is in use, and check out the front end repo for front end information.
