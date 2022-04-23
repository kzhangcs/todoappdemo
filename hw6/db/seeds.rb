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

todolist1 = TodoList.create!(list_name: "Vacation to Disney", list_due_date: Date.new(2022,9,20), account_id: account1.id)
todolist2 = TodoList.create!(list_name: "Business Trip to Alaska", list_due_date: Date.new(2022,6,22), account_id: account1.id)
todolist3 = TodoList.create!(list_name: "Moving", list_due_date: Date.new(2022,7,5), account_id: account1.id)
todolist4 = TodoList.create!(list_name: "Grocery List", list_due_date: Date.new(2022,7,7), account_id: account1.id)
todolist5 = TodoList.create!(list_name: "Fitness", list_due_date: Date.new(2022,7,11), account_id: account1.id)
todolist6 = TodoList.create!(list_name: "Reading List", list_due_date: Date.new(2022,7,14), account_id: account1.id)
todolist7 = TodoList.create!(list_name: "Blog Post", list_due_date: Date.new(2022,7,25), account_id: account1.id)
todolist8 = TodoList.create!(list_name: "Appointments", list_due_date: Date.new(2022,8,2), account_id: account2.id)

todoitem1 = TodoItem.create!(due_date: Date.new(2022,8,15), task_title: "Buy tickets", description: "Buy tickets description", todo_list_id: todolist1.id, done: true)
todoitem2 = TodoItem.create!(due_date: Date.new(2022,6,20), task_title: "Reserve hotel", description: "Reserve hotel description", todo_list_id: todolist1.id, done: false)
todoitem3 = TodoItem.create!(due_date: Date.new(2022,6,7), task_title: "Bring the car to mechanic", description: "Bring the car to mechanic description", todo_list_id: todolist1.id, done: false)

todoitem4 = TodoItem.create!(due_date: Date.new(2022,5,6), task_title: "Set moving date", description: "Todo item 4 description", todo_list_id: todolist3.id, done: true)
todoitem5 = TodoItem.create!(due_date: Date.new(2022,5,18), task_title: "Sell items", description: "Todo item 5 description", todo_list_id: todolist3.id, done: true)
todoitem6 = TodoItem.create!(due_date: Date.new(2022,5,24), task_title: "Rent a moving van", description: "Todo item 6 description", todo_list_id: todolist3.id, done: true)
todoitem7 = TodoItem.create!(due_date: Date.new(2022,5,25), task_title: "Pay deposit", description: "Todo item 7 description", todo_list_id: todolist3.id, done: true)
todoitem8 = TodoItem.create!(due_date: Date.new(2022,5,27), task_title: "Order moving supplies", description: "Todo item 8 description", todo_list_id: todolist3.id, done: false)
todoitem9 = TodoItem.create!(due_date: Date.new(2022,5,30), task_title: "Packing", description: "Todo item 9 description", todo_list_id: todolist3.id, done: false)
todoitem10 = TodoItem.create!(due_date: Date.new(2022,6,28), task_title: "Change address with post office", description: "Todo item 10 description", todo_list_id: todolist3.id, done: false)
todoitem11 = TodoItem.create!(due_date: Date.new(2022,6,28), task_title: "Transfer utilities", description: "Todo item 10 description", todo_list_id: todolist3.id, done: false)

# tag1 = Tag.create!(tag_name: "vacations")
# tag2 = Tag.create!(tag_name: "trips")

# todoitem4.tags << tag1
# todoitem4.tags << tag2

# todoitem5.tags << tag1
# todoitem5.tags << tag2