source 'https://rubygems.org'
# ruby '2.0.0'


# Use sqlite3 as the database for Active Record
#gem 'sqlite3'
group :development, :test do
  gem 'sqlite3', '1.3.8'
  gem 'rspec-rails', '2.13.1'  
  gem 'guard-rspec', '2.5.0'
  # gem 'bcrypt-ruby', github: 'codahale/bcrypt-ruby'
end

group :test do
  gem 'selenium-webdriver', '2.35.1'
  gem 'capybara', '2.1.0'
  gem 'factory_girl_rails', '4.2.1'
end

group :production do
  gem 'pg', '0.15.1'
  gem 'rails_12factor', '0.0.2'
  # gem 'bcrypt-ruby', '3.1.1', :require => 'bcrypt'
end


# Use SCSS for stylesheets
gem 'sass-rails', '4.0.0'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '2.1.1'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails', '4.0.0'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails', '3.0.4'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks', '1.1.1'

# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '1.0.2'

group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', '0.3.20', require: false
end

# Use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano', group: :development

# Use debugger
# gem 'debugger', group: [:development, :test]

require 'rbconfig'
gem 'wdm', '>= 0.1.0' if RbConfig::CONFIG['target_os'] =~ /mswin|mingw/i
gem 'bootstrap-sass', '2.3.2.0'
gem 'bootstrap_helper'
#Fix installation issue of bcrypt-ruby
#http://stackoverflow.com/questions/18541062/issues-using-bcrypt-3-0-1-with-ruby2-0-on-windows
gem 'bcrypt-ruby', github: 'codahale/bcrypt-ruby'
# gem 'bcrypt-ruby', '3.1.1', :require => 'bcrypt'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '4.0.0'
