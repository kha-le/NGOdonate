require 'rails_helper'

describe 'the organizations path' do
  it 'displays a list of organizations' do
    Organization.create name: 'WWF'
    visit root_path
# save_and_open_page
    expect(page).to have_content 'WWF'
  end
end
