# This template pulls in all of the various partials

# Before we commit anything to git, remove files we don't really need:
run 'rm public/index.html'
run 'rm public/favicon.ico'
run 'rm public/images/rails.png'

# Create a fresh git repo
git :init
git :add => "."
git :commit => "-m 'Initial commit.'"

# Pull in JQuery UJS
apply File.expand_path(File.join(File.dirname(__FILE__), '..', 'rails_templates', 'partials', 'jquery.rb'))
git :add => "."
git :commit => "-m 'Pull in JQuery UJS.'"

# Pull in HAML and create a basic HAML layout
apply File.expand_path(File.join(File.dirname(__FILE__), '..', 'rails_templates', 'partials', 'haml.rb'))
git :add => "."
git :commit => "-m 'Setup HAML.'"

# Set up rspec / rspec-rails
apply File.expand_path(File.join(File.dirname(__FILE__), '..', 'rails_templates', 'partials', 'rspec.rb'))
git :add => "."
git :commit => "-m 'Setup RSpec.'"
