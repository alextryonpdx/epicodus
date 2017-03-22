require('capybara/rspec')
require('./app')
Capybara.app = Sinatra::Application

describe('the scrabble score path', {:type => :feature}) do
  it('processes the user entry and returns it as a score') do
    visit('/')
    fill_in('word', :with => 'zebra')
    click_button('Send')
    # save_and_open_page
    expect(page).to have_content(16)
  end
end