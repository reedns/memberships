require 'test_helper'

feature 'joining a group' do
  scenario 'user creates a group and is now a group member' do
    sign_in

    visit new_group_path
    fill_in 'Name', with: 'Rubyists'
    click_button 'Save'
    page.must_have_content users(:elena).email
  end

  scenario 'user joins an exisiting group' do
    sign_in

    visit group_path(groups(:group))
    click_button 'Join group'
    page.must_have_content users(:elena).email
  end
end
