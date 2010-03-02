# This template pulls in all of the various components

# Before we commit anything to git, remove files we don't really need:
apply File.expand_path(File.join(File.dirname(__FILE__), '..', 'rails_templates', 'components', 'remove_misc_files.rb'))

# Create a fresh git repo
git :init
git :add => "."
git :commit => "-m 'Initial commit.'"

# Pull in JQuery UJS
apply File.expand_path(File.join(File.dirname(__FILE__), '..', 'rails_templates', 'components', 'jquery.rb'))
git :add => "."
git :commit => "-m 'Pull in JQuery UJS.'"

# Pull in HAML and create a basic HAML layout
apply File.expand_path(File.join(File.dirname(__FILE__), '..', 'rails_templates', 'components', 'haml.rb'))
git :add => "."
git :commit => "-m 'Setup HAML.'"

# Set up rspec / rspec-rails
apply File.expand_path(File.join(File.dirname(__FILE__), '..', 'rails_templates', 'components', 'rspec.rb'))
git :add => "."
git :commit => "-m 'Setup RSpec.'"

# Setup Cucumber
apply File.expand_path(File.join(File.dirname(__FILE__), '..', 'rails_templates', 'components', 'cucumber.rb'))
git :add => "."
git :commit => "-m 'Setup Cucumber'"

# Setup Factory Girl
apply File.expand_path(File.join(File.dirname(__FILE__), '..', 'rails_templates', 'components', 'factory_girl.rb'))
git :add => "."
git :commit => "-m 'Setup factory girl.'"
