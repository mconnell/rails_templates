# finally, run bundler.
run 'bundle install'
git :add => "."
git :commit => "-m 'Bundle gems.'"
