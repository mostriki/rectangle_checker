# A global method that takes a gem or filename as an argument. We need to require sinatra so the Ruby interpreter can run Sinatra-specific code.
require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/rectangle')
# The get() method comes from Sinatra and takes '/rectangle' as its argument. '/rectangle' refers to the URL path for this page. Let’s say we were adding this page to the domain www.rectanglechecker.com. To get to this page, we'd add /rectangle to the end of the URL: www.rectanglechecker.com/rectangle.
get('/') do
  # @description = "This application will determine whether a rectangle is a square or not."
  erb(:input)
end

post('/output') do
  @length = params.fetch("length")
  @width = params.fetch("width")
  rectangle = Rectangle.new(@length, @width)
  if rectangle.square?
    @string_to_display = "This is a square."
  else
    @string_to_display = "This is not a square."
  end
  erb(:output)
end
