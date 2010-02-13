# Rails Templates

This is my store of Rails 3 templates. Feel free to fork, fix and adapt to suit your own needs.

Currently, the typical install does:

* Sets up a new git repository
* Pulls in JQuery instead of Prototype
* Pulls in HAML and creates a very basic application.html.haml template

Still TODO:

* Something sensible for CSS (960/blueprint)
* Pull in HAML view generators
* Uses Rspec instead of test unit
* Pull in Formtastic
* Pull in Cucumber
* Pull in Hoptoad

## Pre-requisites
At time of writing, Rails 3 is in beta so I've got all of the following installed as system gems (sudo)

    sudo gem install tzinfo builder memcache-client rack rack-test rack-mount erubis mail text-format thor bundler i18n haml
    sudo gem rails --pre

## How to Use
In your workspace, clone the repo:
    git clone git://github.com/mconnell/rails_templates.git

Then run the Rails installer (excluding prototype and test unit)
    rails app_name -JT -m 'rails_templates/typical.rb'

Tada!
