require_relative '../config/environment'

#  demonstrate the basic relationships between models
puts User.first.inspect
puts User.first.account.inspect
puts User.first.account.todo_lists.inspect
puts User.first.account.todo_lists.first.todo_items.inspect
puts User.first.account.todo_lists.first.todo_items.first.tags.inspect

# map TodoItems on the User model
# return TodoItem and TodoList in due date ascending order (by default)
puts User.first.all_lists.inspect
puts User.first.all_items.inspect

# Validate that gender field and age field
user_new = User.create!(login: "john", password: "secret")
Account.create!(gender: "other", age: 30, first_name: "John", last_name: "Smith", user_id: user_new.id)
Account.create!(gender: "male", age: 101, first_name: "John", last_name: "Smith", user_id: user_new.id)
Account.create!(gender: "male", age: 19, first_name: "John", last_name: "Smith", user_id: user_new.id)
