require('sinatra')
require('sinatra/reloader')
require('pry')
also_reload('lib/**/*.rb')
require('./lib/queen_moves')


get('/form') do
  erb(:form)
end

get('/result') do
  @validity = [[params.fetch('start-x-coord'),
			   params.fetch('start-y-coord')],
			  [params.fetch('end-x-coord'),
			   params.fetch('end-y-coord')]
			   ]
  erb(:result)
end