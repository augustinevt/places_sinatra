require('capybara/rspec')
require('./app')

Capybara.app = Sinatra::Application
set(:show_exceptions, false)

describe 'root route', {:type => :feature} do
  it 'displays all places on page' do
    visit('/')
    expect(page).to(have_content('sydney'))
  end
end
