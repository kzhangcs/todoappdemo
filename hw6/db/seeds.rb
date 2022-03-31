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

user1 = User.create!(login: "lebron", pass: "lejames")
account1 = Account.create!(gender: "male", age: 30, first_name: "LeBron", last_name: "James")
todolist1 = TodoList.create!(list_name: "list1", list_due_date: Date.new(2001,1,25))
todolist2 = TodoList.create!(list_name: "list2", list_due_date: Date.new(2001,2,25))
todoitem1 = TodoItem.create!(due_date: Date.new(2001,1,10), task_title: "Buy tickets", description: "Buy tickets description")
todoitem2 = TodoItem.create!(due_date: Date.new(2001,1,11), task_title: "Reserve hotel", description: "Reserve hotel")
todoitem3 = TodoItem.create!(due_date: Date.new(2001,1,11), task_title: "Bring the car to mechanic", description: "Bring the car to mechanic")
tag1 = Tag.create!(tag_name: "vacations")
tag2 = Tag.create!(tag_name: "business trips")

todoitem1.tags << tag1
todoitem1.tags << tag2

todoitem2.tags << tag1
todoitem2.tags << tag2

todolist1.todo_items << todoitem1
todolist1.todo_items << todoitem2
todolist1.todo_items << todoitem3

account1.todo_lists << todolist1
account1.todo_lists << todolist2

user1.accounts << account1
