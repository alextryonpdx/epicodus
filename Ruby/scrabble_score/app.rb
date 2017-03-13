require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/scrabble_score')


get('/') do
  erb(:form)
end

get('/score') do
	@score = params.fetch('word').scrabble_score()
  erb(:result)
end