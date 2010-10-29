file = File.open 'Gemfile', 'r'
contents = ""
file.each do |line|
  contents << line unless line =~ /(^#|^\n)/
end

file = File.open 'Gemfile', 'w'
file.write(contents)
