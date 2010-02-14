# Add the factory_girl gem
append_file 'Gemfile', <<-GEMS
group :test do
  gem 'factory_girl'
end
GEMS

# Enable fixtures on rspec, but replace them with factory_girl
gsub_file 'config/application.rb', /(< Rails::Application)/, <<-FIXTURES
\\1
    config.generators do |g|
      g.test_framework :rspec, :fixture => true, :views => false
      g.fixture_replacement :factory_girl, :dir => "spec/factories"
    end
FIXTURES

# Add fixture generator for factories
# Heavily inspired from http://github.com/pjb3/rails3-generators
directory File.expand_path(File.join(File.dirname(__FILE__), '..', 'rails_templates', 'generators')), 'lib/generators'
