require 'spec_helper'

feature 'User can ask Ms.Rachael a question' do
  scenario 'by clicking on the ask button and filling out the form' do
    visit '/'
    click_on 'Ask Ms.Rachael'
    fill_in 'Name', with: 'Kinsey'
    fill_in 'Email', with: 'kinsey@example.com'
    fill_in 'Subject', with: 'Question about my student.'
    fill_in 'Body', with: 'Is my student doing okay?'
    click_on 'Ask'

    expect(page).to have_content 'You have successfully asked Ms.Rachael a question. She will get back to you shortly!'
  end
end