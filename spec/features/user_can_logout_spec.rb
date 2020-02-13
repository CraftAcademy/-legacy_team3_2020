feature 'User can' do
    let(:user) { create(:user) }
    
    before do 
        login_as(user, scope: :user)
        visit root_path
        click_on 'Inbox'
    end

    it 'log out' do
        click_on 'Logout'
        expect(page).to have_content 'Login'
    end
end
