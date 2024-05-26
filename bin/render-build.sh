#!/usr/bin/env bash
set -o errexit

chmod +x ./bin/rails   # Ensure rails script has execute permission

bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean
