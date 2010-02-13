# Create the javascripts dir
run 'mkdir public/javascripts'

# pull down jquery, jquery-ui and the appropriate rails driver
run 'curl -L http://ajax.googleapis.com/ajax/libs/jquery/1.4.1/jquery.min.js > public/javascripts/jquery.js'
run 'curl -L http://ajax.googleapis.com/ajax/libs/jqueryui/1.7.2/jquery-ui.min.js > public/javascripts/jquery-ui.js'
run 'curl -L http://github.com/rails/jquery-ujs/raw/master/src/rails.js > public/javascripts/rails.js'
