# Skellington


[![Build
Status](https://travis-ci.org/audy/skellington.png?branch=master)](https://travis-ci.org/audy/skellington)

World's Greatest Sinatra Skeleton. On the food spectrum of web app development
frameworks, it's a tempeh burrito

- Thin
- PostgreSQL + Sequel
- RSpec
- Bootstrap + HAML + AssetPack

[Demo app](http://skellington.herokuapp.com) on Heroku.

## Quickstart

Using Ruby 2.1.2 and PostgreSQL 9.3

```
dbcreate skellington

bundle install

DATABASE_URL=postgres://$USER@127.0.0.1/skellington

bundle exec rake db:migrate
bundle exec rackup
```
