feature 'user can sign up' do
  describe 'succesfully' do
    before do
      visit root_path
      click_on 'Sign up'
      fill_in 'Name', with: 'John'
      fill_in 'Email', with: 'john@sit.com'
      fill_in 'Password', with: 'password'
      fill_in 'Password confirmation', with: 'password'
      click_on 'Create'
    end

    it 'redirect to root_path' do
      expect(current_path).to eq root_path  
    end
  
    it 'display welcome message' do
      expect(page).to have_content 'Welcome! You have signed up successfully.'
    end
  end

  describe 'Empty signup' do
    before do
      visit root_path
      click_on 'Sign up'
      click_on 'Create'
    end

    it 'displays empty error' do
      expect(page).to have_content '3 errors prohibited this user from being saved:'
    end
  end

  describe 'Different passwords' do
    before do
      visit root_path
      click_on 'Sign up'
      fill_in 'Name', with: 'John'
      fill_in 'Email', with: 'john@sit.com'
      fill_in 'Password', with: 'password'
      fill_in 'Password confirmation', with: 'passwordextra'
      click_on 'Create'
    end
    it 'displays worng password confirmation' do
      expect(page).to have_content "Password confirmation doesn't match Password"
    end
  end

  describe 'short password' do
    before do
      visit root_path
      click_on 'Sign up'
      fill_in 'Name', with: 'John'
      fill_in 'Email', with: 'john@sit.com'
      fill_in 'Password', with: 'pass'
      fill_in 'Password confirmation', with: 'pass'
      click_on 'Create'
    end
    it 'displays too short password' do
      expect(page).to have_content 'Password is too short (minimum is 8 characters)'
    end
  end


end

  

