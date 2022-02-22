require 'csv'
require_relative 'student.rb'
require_relative 'course.rb'
require 'yaml'

# - processes a CSV file that contains a header line. Automatically converts
# fields that look like numbers.
students = []
student_id = 1

course1 = Course.new(605.787, "Front End Web App Development")
course2 = Course.new(605.671, "Principles of Data Communications Networks")
course3 = Course.new(695.622, "Web Security")
course4 = Course.new(605.612, "Operating Systems")
courses = [course1, course2, course3, course4]

CSV.foreach("students.csv", headers: true, converters: [CSV::Converters[:float]]) do |data|
  student = Student.new do |s|
    s.student_id = student_id
    s.first_name = data["GivenName"]
    s.last_name = data["Surname"]
    s.city = data["City"]
    s.state = data["State"]
    s.email = data["EmailAddress"]
    s.gender = data["Gender"]
    s.pounds = data["Pounds"]
    s.gpa = rand(2.0..4.0)
    s.taking_courses = courses.sample(rand(0..4.0))
    p s.taking_courses
  end
  students << student
  student_id += 1
end

File.write('university_db.yml', students.to_yaml)
