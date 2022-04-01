class Account < ApplicationRecord
  belongs_to :user
  has_many :todo_lists

  validates :gender, inclusion: { in: ["male","female", "N/A"] }
  validates :age, numericality: { greater_than_or_equal_to: 20, less_than_or_equal_to: 100 }
end
