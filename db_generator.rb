# CSV library for Ruby
#
# - reads a file containing csv data and processes line by line

require 'csv'
require_relative 'student.rb'
require_relative 'course.rb'

# - processes a CSV file that contains a header line. Automatically converts
# fields that look like numbers.
students = []
student_id = 0
CSV.foreach("students.csv", headers: true, converters: :numeric) do |data|
  student = Student.new
  student.student_id = student_id #todo
  student.first_name = data["GivenName"]
  student.last_name = data["Surname"]
  student.city = data["City"]
  student.state = data["State"]
  student.email = data["EmailAddress"]
  student.gender = data["Gender"]
  student.pounds = data["Pounds"]
  student.gpa = 0 #todo
  student.taking_courses = 0 #todo
  students << student
  student_id += 1
end

puts students