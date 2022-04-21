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

user1 = User.create!(login: "lebron", password: "lejames")
user2 = User.create!(login: "johnw", password: "123abc")

account1 = Account.create!(gender: "male", age: 30, first_name: "LeBron", last_name: "James", user_id: user1.id)
account2 = Account.create!(gender: "male", age: 30, first_name: "John", last_name: "Whatever", user_id: user2.id)

todolist1 = TodoList.create!(list_name: "vacation to Disney", list_due_date: Date.new(2022,9,20), account_id: account1.id)
todolist2 = TodoList.create!(list_name: "business trip to Alaska", list_due_date: Date.new(2022,6,22), account_id: account1.id)

todoitem1 = TodoItem.create!(due_date: Date.new(2022,8,15), task_title: "Buy tickets", description: "Buy tickets description", todo_list_id: todolist1.id, done: true)
todoitem2 = TodoItem.create!(due_date: Date.new(2022,6,20), task_title: "Reserve hotel", description: "Reserve hotel description", todo_list_id: todolist1.id, done: false)
todoitem3 = TodoItem.create!(due_date: Date.new(2022,6,7), task_title: "Bring the car to mechanic", description: "Bring the car to mechanic description", todo_list_id: todolist1.id, done: false)

todoitem4 = TodoItem.create!(due_date: Date.new(2022,4,29), task_title: "Buy a hunting rifle", description: "Buy a hunting rifle description", todo_list_id: todolist2.id, done: true)
todoitem5 = TodoItem.create!(due_date: Date.new(2022,4,28), task_title: "Buy a really warm coat", description: "Buy a really warm coat description", todo_list_id: todolist2.id, done: false)

tag1 = Tag.create!(tag_name: "vacations")
tag2 = Tag.create!(tag_name: "trips")

todoitem4.tags << tag1
todoitem4.tags << tag2

todoitem5.tags << tag1
todoitem5.tags << tag2