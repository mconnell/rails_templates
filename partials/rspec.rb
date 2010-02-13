require 'rspec/version'
require 'rspec/rails/version'

append_file 'Gemfile', <<-GEMS
group :test do
  gem 'webrat'
  gem 'rspec',       '#{Rspec::Version::STRING}'
  gem 'rspec-rails', '#{Rspec::Rails::Version::STRING}'
end

GEMS

run 'script/rails generate rspec:install'
