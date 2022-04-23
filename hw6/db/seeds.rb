# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Tag.destroy_all
TodoItem.destroy_all
TodoList.destroy_all
Account.destroy_all
User.destroy_all

user1 = User.create!(login: "Matt", password: "abc123")
user2 = User.create!(login: "Tim", password: "abc123")

account1 = Account.create!(gender: "male", age: 30, first_name: "Matt", last_name: "James", user_id: user1.id)
account2 = Account.create!(gender: "male", age: 30, first_name: "Tim", last_name: "Whatever", user_id: user2.id)

todolist1 = TodoList.create!(list_name: "vacation to Disney", list_due_date: Date.new(2022,9,20), account_id: account1.id)
todolist2 = TodoList.create!(list_name: "business trip to Alaska", list_due_date: Date.new(2022,6,22), account_id: account1.id)
todolist3 = TodoList.create!(list_name: "todolist3", list_due_date: Date.new(2022,7,5), account_id: account1.id)
todolist4 = TodoList.create!(list_name: "todolist4", list_due_date: Date.new(2022,7,7), account_id: account1.id)
todolist5 = TodoList.create!(list_name: "todolist5", list_due_date: Date.new(2022,7,11), account_id: account1.id)
todolist6 = TodoList.create!(list_name: "todolist6", list_due_date: Date.new(2022,7,14), account_id: account1.id)
todolist7 = TodoList.create!(list_name: "todolist7", list_due_date: Date.new(2022,7,25), account_id: account1.id)
todolist8 = TodoList.create!(list_name: "todolist8", list_due_date: Date.new(2022,8,2), account_id: account2.id)

todoitem1 = TodoItem.create!(due_date: Date.new(2022,8,15), task_title: "Buy tickets", description: "Buy tickets description", todo_list_id: todolist1.id, done: true)
todoitem2 = TodoItem.create!(due_date: Date.new(2022,6,20), task_title: "Reserve hotel", description: "Reserve hotel description", todo_list_id: todolist1.id, done: false)
todoitem3 = TodoItem.create!(due_date: Date.new(2022,6,7), task_title: "Bring the car to mechanic", description: "Bring the car to mechanic description", todo_list_id: todolist1.id, done: false)

todoitem4 = TodoItem.create!(due_date: Date.new(2022,5,6), task_title: "todoitem4", description: "Todo item 4 description", todo_list_id: todolist2.id, done: true)
todoitem5 = TodoItem.create!(due_date: Date.new(2022,5,18), task_title: "todoitem5", description: "Todo item 5 description", todo_list_id: todolist2.id, done: false)
todoitem6 = TodoItem.create!(due_date: Date.new(2022,5,24), task_title: "todoitem6", description: "Todo item 6 description", todo_list_id: todolist2.id, done: false)
todoitem7 = TodoItem.create!(due_date: Date.new(2022,5,25), task_title: "todoitem7", description: "Todo item 7 description", todo_list_id: todolist2.id, done: false)
todoitem8 = TodoItem.create!(due_date: Date.new(2022,5,27), task_title: "todoitem8", description: "Todo item 8 description", todo_list_id: todolist2.id, done: false)
todoitem9 = TodoItem.create!(due_date: Date.new(2022,5,30), task_title: "todoitem9", description: "Todo item 9 description", todo_list_id: todolist2.id, done: false)
todoitem10 = TodoItem.create!(due_date: Date.new(2022,6,28), task_title: "todoitem10", description: "Todo item 10 description", todo_list_id: todolist2.id, done: false)

# tag1 = Tag.create!(tag_name: "vacations")
# tag2 = Tag.create!(tag_name: "trips")

# todoitem4.tags << tag1
# todoitem4.tags << tag2

# todoitem5.tags << tag1
# todoitem5.tags << tag2