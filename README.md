# Site Indexer [![CircleCI](https://circleci.com/gh/quolpr/site_indexer/tree/master.svg?style=svg)](https://circleci.com/gh/quolpr/site_indexer/tree/master)

This application allows you to index site. It scraps only `h1`, `h2`, `h3`, `a` tags from site
asynchronously and saves it to DB. All code is covered with tests(98%), project was
developed by using BDD methodology.

## Api Endpoints

API documentation is generating by using [rspec_api_documentation](https://github.com/zipmark/rspec_api_documentation).
Location - [Index](doc/api/index.markdown)

## Configuration

To start this application on your machine you will need:

1. Copy .env_example to .env and make some changes.

2. `rake db:create db:schema:load`

To start server - `bin/rails s`, to run tests - `bin/rspec`
