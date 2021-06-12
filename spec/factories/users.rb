FactoryBot.define do    
    factory :user do
        name { "Fernando"}
        email { "user@user.com"}
        phone { "12345566"}
        avatar { Rack::Test::UploadedFile.new(Rails.root.join('spec/support/test-avatar.png'), 'image/png')}
        password { "123456"}
    end
end