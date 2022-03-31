class Account < ApplicationRecord
  belongs_to :user
  has_many :todo_lists
end
