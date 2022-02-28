require_relative 'student' 
require_relative 'course' 
require 'yaml'

class DbApi  

  @@students = []

  def self.method_missing (method, *args)
    if @@students.empty?
      @@students = YAML::load_file('university_db.yml')
    end
    students_array = @@students
    
    compare = args[0]
    criteria = args[1] 
    result = method.match(/select_students_where_(.*)/i)
    attribute = result[1]
    
    selected = students_array.select{|student| (student.send attribute).send(compare, criteria)}
  end
end