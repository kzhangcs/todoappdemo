require_relative 'student' 
require_relative 'course' 
require 'yaml'

class DbApi  

  # @@students =  YAML::load_file('university_db.yml')

  # def initializer()
  #   @students =  YAML::load_file('university_db.yml')
  # end

  # def self.students #class method
  #   @@students
  # end

  # def self.method_missing(method, *args)
  #     @@students = YAML::load_file('university_db.yml')
  #     puts students[0]
  # end

  def self.helper(method, *args)
    compare = args[0]
    male = args[1]
    students = YAML::load_file('university_db.yml')
    result = method.match(/select_students_where_(.*)/i)
    puts result[1]
    selected = students.select{|student| male.send(compare, (student.send result[1]))}
  end

  # def self.select_by_gender (gender)
  #   students = YAML::load_file('university_db.yml')
  #   selected = students.select{|student| gender === student.gender}
  # end

  def self.select_by_first_name (first_name)
    students = DbApi.students
    selected = students.select{|student| first_name =~ student.first_name}
  end 
  def self.select_by_last_name (last_name)
    students = DbApi.students
    selected = students.select{|student| last_name =~ student.last_name} 
  end 
  def self.select_by_weight_more_than(pounds)
    students = DbApi.students
    selected = students.select{|student| pounds < student.pounds}
  end
end