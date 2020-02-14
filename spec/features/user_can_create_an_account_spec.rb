require 'rails_helper'

feature 'User can create an account' do  
  before do
    visit root_path
    
  end

  it '#' do
    click_on 'Sign up'
    expect(page).to have_content
  end






end