require 'rails_helper'

describe 'the organizations path' do

  it 'creates a new organization' do
    login_as_user
    visit new_organization_path
    fill_in 'Name', with: 'Red Cross'
    click_on 'Create Organization'
    expect(page).to have_content 'Organization added!'
  end

  it 'fails to create a new organization when not given the name' do
    login_as_user
    visit new_organization_path
    click_on 'Create Organization'
    expect(page).to have_content 'Errors'
  end


end
