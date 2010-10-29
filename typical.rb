def use(component)
  apply File.expand_path(File.join(File.dirname(__FILE__), '..', 'rails_templates', 'components', "#{component}.rb"))
  git :add    => "."
  git :commit => "-m 'Add Component: #{component}'"
end

# This template pulls in all of the various components

# Before we commit anything to git, remove files we don't really need:
apply File.expand_path(File.join(File.dirname(__FILE__), '..', 'rails_templates', 'components', 'remove_misc_files.rb'))

# Create a fresh git repo
git :init
git :add => "."
git :commit => "-m 'Initial commit.'"

use(:jquery)
use(:haml)
use(:bundle_install)
use(:cleanup_gemfile)
