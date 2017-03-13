require('sinatra')
require('sinatra/reloader')

get('/') do
	@sender = 'Alex'
	@recipient = 'Seve'
	erb(:letter)
end

get('/australia') do
	@sender = 'Alex'
	@recipient = 'Seve'
	erb(:australia)
end

get('/favorite_photos') do
	erb(:photos)
end

get('/greeting_form') do
	erb(:form)
end

get('/greeting_card') do
	@sender = params.fetch('sender')
	@recipient = params.fetch('recipient')
	erb(:greeting_card)
end