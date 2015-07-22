require 'rails_helper'

describe 'the root path' do
  it 'visit the home page' do
    visit root_path
    expect(page).to have_content 'Home'
  end
end
