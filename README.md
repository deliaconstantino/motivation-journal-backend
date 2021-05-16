# Motivation Journal

Motivation Journal is a Single Page Application that allows a user to set a timer for writing journal entries. Upon the completion of the timer, a user has the option to save or delete their journal entry.

This repo is the Rails API back end for the Motivation Journal App.

The front end of the app can be found in the Github Repo: motivation-journal-frontend at https://github.com/deliaconstantino/motivation-journal-frontend with specific instructions for running the front end. Note that the back end will need to be running through Rails server in order to populate information from the database while viewing the front end.

* Ruby version: '2.7.1'

* Rails version: '~> 6.1.3', '>= 6.1.3.1'

## Configuration and Database

* To get started with Motivation Journal, fork and clone this app.

* As this app uses a Postgres server, run `rails db:create` then `rails db:migration` to create a database and migrations

* Run `rails db:seed` to seed the database

* Finally fire up the Rails server and your backend should be all set.

* Make sure to keep Rails server running while the app is in use, and check out the front end repo for front end information.
