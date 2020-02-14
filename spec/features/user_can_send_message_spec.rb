require 'pry'

feature 'User can send a message' do
    let(:sender){ FactoryBot.create(:user, name: 'John', email: 'john@mail.com', password: '12345678') }
    let(:reciever){ FactoryBot.create(:user, name: 'Jane', email: 'reciever@mail.com', password: '87654321')}

    before do
        sender.send_message(reciever, 'Hi Jane', 'First Message')
    end
    
    it 'and reciever should have 1 new message in the inbox' do
        count = reciever.mailbox.inbox.count
        expect(count).to eq 1
    end
end