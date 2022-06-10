#!/bin/bash
bundle exec bundle exec rake db:create db:schema:load && bundle exec rspec spec