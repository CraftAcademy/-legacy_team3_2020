FactoryBot.define do
    factory :user do
        name { "John Doe" }
        email { "john@mail.com" }
        password { "12345678" }
    end

    factory :usertwo, class: User do
        name { "Jane Doe" }
        email { "jane@mail.com" }
        password { "87654321" }
    end
end