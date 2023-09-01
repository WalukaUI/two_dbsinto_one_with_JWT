#!/usr/bin/env bash
# exit on error
set -o errexit

bundle install
bundle exec rails --tasks assets:precompile
bundle exec rails --tasks assets:clean
bundle exec rails db:migrate
bundle exec rails db:seed