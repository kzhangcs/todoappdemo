require_relative 'student' 
require_relative 'course' 
require 'yaml'

class DbApi  

  @@students = []

  # def initializer()
  #   puts "here"
  #   @students =  YAML::load_file('university_db.yml')
  # end

  # def self.students #class method
  #   @@students
  # end

  # def self.method_missing(method, *args)
  #     @@students = YAML::load_file('university_db.yml')
  #     puts students[0]
  # end

  def self.method_missing (method, *args)
    if @@students.empty?
      @@students = YAML::load_file('university_db.yml')
    end
    students_array = @@students
    
    compare = args[0]
    searching = args[1] 
    result = method.match(/select_students_where_(.*)/i)
    attribute = result[1]
    
    selected = students_array.select{|student| (student.send attribute).send(compare, searching)}
  end
  
  # def self.select_by_gender (gender)
  #   students = YAML::load_file('university_db.yml')
  #   selected = students.select{|student| gender === student.gender}
  # end

#   def self.select_by_first_name (first_name)
#     students = DbApi.students
#     selected = students.select{|student| first_name =~ student.first_name}
#   end 
#   def self.select_by_last_name (last_name)
#     students = DbApi.students
#     selected = students.select{|student| last_name =~ student.last_name} 
#   end 
#   def self.select_by_weight_more_than(pounds)
#     students = DbApi.students
#     selected = students.select{|student| pounds < student.pounds}
#   end
end