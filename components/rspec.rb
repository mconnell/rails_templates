require 'rspec/version'
require 'rspec/rails/version'

append_file 'Gemfile', <<-GEMS
group :test do
  gem 'rspec'
  gem 'rspec-rails'
end

GEMS

run 'script/rails generate rspec:install'
