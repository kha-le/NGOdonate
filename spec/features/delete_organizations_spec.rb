require 'rails_helper'

describe 'the organizations path' do
  it 'deletes an organization' do
    wwf = Organization.create name: 'WWF'
    visit organization_path wwf
    click_on 'Delete'
    expect(page).to have_content 'deleted'
  end

  # # test delete failure
  # it 'deletes an organization' do
  #   wwf = Organization.create name: 'WWF'
  #   visit organization_path wwf
  #   wwf.delete
  #   click_on 'Delete'
  #   expect(page).to have_content 'deleted'
  # end
end
