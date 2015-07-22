require 'rails_helper'

describe 'the organizations path' do
  it 'edits an organization' do
    login_as_user
    wwf = Organization.create name: 'WWF'
    visit organization_path wwf
    click_on 'Edit Organization'
    fill_in 'Name', with: 'World Wildlife Federation'
    click_on 'Update Organization'
    expect(page).to have_content 'updated'
  end

  it 'fails to edit an organization when not given the name' do
    login_as_user
    wwf = Organization.create name: 'WWF'
    visit organization_path wwf
    click_on 'Edit Organization'
    fill_in 'Name', with: ''
    click_on 'Update Organization'
    expect(page).to have_content 'Errors'
  end
end
