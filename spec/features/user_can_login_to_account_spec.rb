feature 'User can' do
    let(:registered_user) { create(:user) }

    before do
        visit root_path
    end

    it 'log in' do
        click_on 'Login'
        fill_in 'user_email', with: registered_user.email
        fill_in 'user_password', with: '12345678'
        click_on 'Log in'
        expect(page).to have_content 'Hello'
    end

    it 'get an error message if the password is wrong' do
        click_on 'Login'
        fill_in 'user_email', with: registered_user.email
        fill_in 'user_password', with: 'password'
        click_on 'Log in'
        expect(page).to have_content 'Invalid Email or password.'
    end

    it 'get an error message if the email is wrong' do
        click_on 'Login'
        fill_in 'user_email', with: 'mail@mail.com'
        fill_in 'user_password', with: '12345678'
        click_on 'Log in'
        expect(page).to have_content 'Invalid Email or password.'
    end 
end