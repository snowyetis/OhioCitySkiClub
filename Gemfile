source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

# backend mods
gem 'rails', '~> 5.1.6', '>= 5.1.6.1'
gem 'sqlite3', '~> 1.3.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'

# server assets
gem 'puma', '~> 3.7'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# frontend assets
# gem 'compass-rails', github: 'Compass/compass-rails'
# gem 'sass-rails', '~> 5.0'
gem 'sass-rails'
gem 'compass-rails'
gem 'bootstrap-sass'
gem 'uglifier', '>= 1.3.0'
gem "font-awesome-rails"
gem 'jquery-rails'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
# gem 'animate-scss'
# gem 'materialize-sass', '~> 1.0.0'
gem 'momentjs-rails' # dependency of daterangepicker
gem 'bootstrap-daterangepicker-rails'

# mods
gem 'devise'
gem 'carrierwave'
gem 'carrierwave_backgrounder'
gem "mini_magick"
gem 'will_paginate'
gem 'timezone', '~> 1.0'
gem 'local_time'
# gem 'pickadate-rails'


group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
