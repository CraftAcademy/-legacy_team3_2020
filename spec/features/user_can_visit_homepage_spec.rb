feature 'Can visit homepage' do
    context 'with log in and signup' do
        before do 
            visit root_path
        end

        it 'displays name of the application' do
            expect(page).to have_content 'Craft Academy Mailboxer'
        end

         it 'displays sign-up button' do
            click_on 'Sign up'
            expect(page).to have_content 'Sign up'
         end

         it 'displays login button' do
            click_on 'Login'
            expect(page).to have_content 'Login'
         end
    end
end