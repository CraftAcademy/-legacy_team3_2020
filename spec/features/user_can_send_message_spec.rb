require 'pry'

feature 'User can' do
    let(:registered_user){ create(:user) }

    before do
        visit root_path
        click_on "Login"
        fill_in "user_email", with: registered_user.email
        fill_in "user_password", with: "12345678"
        click_on "Log in"
    end
        
    it 'create an email' do
        click_on 'Inbox'
        click_on 'Compose'
        select "John Doe", from: 'Recipients'
        fill_in 'Subject', with: 'Hello'
        fill_in 'Type your message here', with: 'Test Message'
        # click_on "Send Message"
    end 
end