feature 'User can' do
    let(:sender){ FactoryBot.create(:user, name: 'John', email: 'john@mail.com', password: '12345678') }
    let(:receiver){ FactoryBot.create(:user, name: 'Jane', email: 'reciever@mail.com', password: '87654321')}

    before do
        sender.send_message(receiver, 'Hi Jane', 'First Message')
        count = receiver.mailbox.inbox.count
        expect(count).to eq 1
        login_as(receiver, scope: :user)
        visit root_path
        click_on 'Inbox'
        click_on 'View'
        click_on 'Move to trash'
        count = receiver.mailbox.trash.count
        expect(count).to eq 1
    end
    
    it 'untrash an email' do
        click_on 'Trash'
        click_on 'View'
        click_on 'Untrash'
        count = receiver.mailbox.inbox.count
        expect(count).to eq 1
    end
end