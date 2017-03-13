require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/titlecase')


get('/form') do
  erb(:form)
end

get('/title') do
  @title = params.fetch('title').titlecase()
  erb(:title)
end