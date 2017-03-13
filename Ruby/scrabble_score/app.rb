require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/scrabble_score')


get('/') do
  erb(:form)
end

get('/score') do
#   @coords = [[params.fetch('start-x-coord').to_i,
# 			   params.fetch('start-y-coord').to_i],
# 			  [params.fetch('end-x-coord').to_i,
# 			   params.fetch('end-y-coord').to_i]
# 			   ]
# # binding.pry
#   @validity = @coords.queen_move?
  erb(:result)
end