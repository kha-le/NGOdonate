require 'rails_helper'

describe 'the organizations path' do
  it 'displays a list of organizations' do
    Organization.create name: 'WWF'
    visit root_path
    expect(page).to have_content 'WWF'
  end

  it 'displays a single organization page' do
    Organization.create name: 'WWF'
    visit root_path
    click_on 'WWF'
    expect(page).to have_content 'Donate'
  end

  it 'creates a new organization' do
    visit new_organization_path
    fill_in 'Name', with: 'Red Cross'
    click_on 'Create Organization'
    expect(page).to have_content 'Organization added!'
  end
end
