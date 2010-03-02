append_file 'Gemfile', <<-GEMS
group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'cucumber-rails'
end

GEMS

run 'script/rails generate cucumber:skeleton'
