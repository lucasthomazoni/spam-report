# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.2.1'

gem 'bootsnap', require: false
gem 'dotenv-rails'
gem "olive_branch"
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.4', '>= 7.0.4.2'
gem 'slack-ruby-client'
gem 'sprockets-rails'
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

group :development, :test do
  gem 'brakeman'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
end

group :development do
  gem 'rubocop', '~> 1.36.0', require: false
  gem 'rubocop-performance', '~> 1.15.0'
  gem 'rubocop-rails', '~> 2.16'
  gem 'rubocop-rspec', '~> 2.13.2'
  gem 'web-console'
end

group :test do
  gem 'rails-controller-testing'
  gem 'rspec-rails', '6.0.0.rc1'
  gem 'shoulda-matchers'
  gem 'simplecov', require: false
  gem 'simplecov-console', require: false
end
