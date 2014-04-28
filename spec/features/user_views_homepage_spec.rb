require 'spec_helper'

feature 'Managing the homepage' do
  before(:each) do
    visit '/'
  end

  scenario 'User views the homepage' do
    expect(page).to have_content('Rachael Durham')
  end

  scenario "User navigates to the 'About' page" do
    click_on 'About'
    expect(page).to have_content '2014 Teach For America Corps Member'
  end

  pending "User navigates to the 'Blog' page" do
    click_on 'Blog'
    expect(page).to have_content "Dashboard"
  end

  scenario "User navigates to 'Mali's Page'" do
    click_on "Mali's Page"
    expect(page).to have_content "Hi I'm Mali."
  end

  scenario "User navigates to the 'Contact Rach' page" do
    click_on 'Contact Rach'
    expect(page).to have_content 'I would love to hear from you!'
  end

  scenario 'Students can ask Ms.Rachael a question' do
    click_on 'Ask Ms.Rachael'
    expect(page).to have_content 'Please fill this out to ask Ms.Rachael a question'
  end
end