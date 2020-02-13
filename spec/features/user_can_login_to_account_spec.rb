feature 'User can' do
    let(:registered_user) { create(:user) }

    before do
        visit root_path
    end

    it 'log in' do
        click_on "Login"
        fill_in "user_email", with: registered_user.email
        fill_in "user_password", with: "12345678"
        click_on "Log in"
        expect(page).to have_content "Hello"
    end
    
end