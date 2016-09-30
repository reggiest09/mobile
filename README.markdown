# Starter Kit Rails

[![Deploy](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

It is a Rails 4 app with Ruby 2.2.2

## Setup

    1. Create a new Sentry application and set the DNS: File is located in config/initializers/raven.rb
    2. If active admin is used change the email and password to suit your needs.
    3. Do not work directly in the starterkitrails folder. Create a copy of it and setup bitbucket for the new project.

## Running on your Machine
Get the source:

    $ git clone git@bitbucket.org:takeofflabs/starterkitrails.git

    $ cd starterkitrails

Setup rvmrc (assuming you are using TextMate):

    $ mate .rvmrc

Paste the following content and save:

    $ rvm use 2.2.2@starterkitrails --create

Then:

    $ cd ..
    $ cd starterkitrails

I am using postgreSQL for the underlying database. You will need to setup your own config/database.yml. A sample file:

    $ development:
    $   adapter:    postgresql
    $   host:       localhost
    $   database:   starterkitrails_development
    $   timeout:    5000
    $   encoding:   utf8
    $   pool:       5

Run migrations:

    $ rake db:migrate

Start the server:

    $ rails s

Open <http://localhost:3000> in your browser to see the app running. If you have issues getting the app running, [email me](mailto:norbert@takeofflabs.com).
