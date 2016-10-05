require "factory_girl"
require "faker"

FactoryGirl.find_definitions

User.delete_all
user1 = FactoryGirl.create :user, email: "user@test.nl", password: "abcd1234"
user_random = FactoryGirl.create_list :user, 4

Post.delete_all
FactoryGirl.create_list :post, 6
