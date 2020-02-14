feature 'User can' do
    let(:sender){ FactoryBot.create(:user, name: 'John', email: 'john@mail.com', password: '12345678') }
    let(:receiver){ FactoryBot.create(:user, name: 'Jane', email: 'reciever@mail.com', password: '87654321')}

    before do
        sender.send_message(receiver, 'Hi Jane', 'First Message')
        count = receiver.mailbox.inbox.count
        expect(count).to eq 1
        login_as(receiver, scope: :user)
        visit root_path
    end

    it 'move an email to trash' do
        click_on 'Inbox'
        click_on 'View'
        click_on 'Move to trash'
        count = receiver.mailbox.trash.count
        expect(count).to eq 1
    end
end
