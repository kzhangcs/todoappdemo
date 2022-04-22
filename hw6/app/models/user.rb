class User < ApplicationRecord
   has_secure_password

   has_one :account
   has_many :all_lists, through: :account, source: :todo_lists
   has_many :all_items, through: :all_lists, source: :todo_items
end
