require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/l33t')


get('/form') do
  erb(:form)
end

get('/title') do
  @title = params.fetch('input').l33t()
  erb(:title)
end