# I think the process of getting haml running is a bit broke as
# we need the gem in the Gemfile and the plugin ATM
append_file 'Gemfile', <<-GEMS
gem 'haml'

GEMS

run "haml --rails ."

# Generate an application layout similiar to one created by the scaffold generator
file 'app/views/layouts/application.html.haml', <<-CODE
!!! 5
%html
  %head
    %title= controller.action_name
    = javascript_include_tag 'jquery', 'jquery-ui', 'rails'
    = csrf_meta_tag
  %body
    - if notice.present?
      %p.notice= notice

    = yield
CODE
