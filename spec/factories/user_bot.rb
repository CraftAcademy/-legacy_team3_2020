FactoryBot.define do
    factory :user do
        name { "John Doe" }
        email { "john@mail.com" }
        password { "12345678" }
    end
end