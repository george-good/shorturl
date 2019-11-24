require 'rails_helper'

RSpec.describe 'Creating a short URL' do
  before { visit root_path }

  it 'creates a new short url', :aggregate_failures do
    fill_in 'Original', with: 'https://google.com'
    click_on('Shorten URL')

    expect(page).to have_content('Your short URL')
    expect(page).to have_link('https://google.com')
  end
end
