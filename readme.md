# Skellington

[![Build
Status](https://travis-ci.org/audy/skellington.png?branch=master)](https://travis-ci.org/audy/skellington)

World's Greatest Sinatra Skeleton. On the food spectrum of web app development
frameworks, it's a tempeh burrito

- PostgreSQL + DataMapper
- RSpec + Webrat
- Bootstrap + HAML + AssetPack

[Demo app](http://skellington.herokuapp.com) on Heroku.

## Setup

Using Ruby 2.1.2 and PostgreSQL 9.3

```
bundle install
DATABASE_URL=postgres://$USER@127.0.0.1/postgres bundle exec rackup
```
