# Rails Templates

This is my store of Rails 3 templates. Feel free to fork, fix and adapt to suit your own needs.

Currently, the typical install does:

* Sets up a new git repository
* Pulls in JQuery instead of Prototype
* Pulls in HAML and creates a very basic application.html.haml template
* Sets up RSpec
* Adds Factory Girl, and adds a generator to auto-create spec/factories/model_name_factory.rb files

Still TODO:

* Something sensible for CSS (960/blueprint)
* Pull in HAML view generators
* Pull in Formtastic
* Pull in Cucumber
* Pull in Hoptoad
* Capify in prep of deployment

## Pre-requisites
At time of writing, Rails 3 is in beta so I've got all of the following installed as system gems (sudo)

    sudo gem install tzinfo builder memcache-client rack rack-test rack-mount erubis mail text-format thor bundler i18n haml
    sudo gem rails --pre

You'll also need RSpec/RSpec-rails 2 which can be installed via:

    sudo gem install webrat
    sudo gem install rspec --prerelease
    sudo gem install rspec-rails --pre

And last but not least, to get factory_girl working you need to build the gem from the rails3 dev branch:

    git clone git://github.com/thoughtbot/factory_girl.git
    cd factory_girl
    git checkout rails3
    gem build factory_girl.gemspec
    sudo gem install factory_girl-1.2.3.gem

## How to Use
In your workspace, clone the repo:
    git clone git://github.com/mconnell/rails_templates.git

Then run the Rails installer (excluding prototype and test unit)
    rails app_name -JT -m 'rails_templates/typical.rb'

Tada!
