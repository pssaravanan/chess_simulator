Dir['./app/**/*.rb'].each do |f|
  require f
end
require './command_line_app'
