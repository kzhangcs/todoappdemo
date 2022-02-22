require_relative 'student' 
require_relative 'course' 
require 'yaml'

class DbApi  

  @@students = YAML::load_file('university_db.yml')

  # def initializer()
  #   @@students =  YAML::load_file('university_db.yml')
  # end

  def self.students #class method
    @@students
  end

  def self.select_by_gender (gender)
    students = DbApi.students
    selected = students.select{|student| gender === student.gender}
  end

  def self.select_by_first_name (first_name)
    students = DbApi.students
    selected = students.select{|student| first_name =~ student.first_name} #todo: regex
  end 
  def self.select_by_last_name (last_name)
    students = DbApi.students
    selected = students.select{|student| last_name =~ student.last_name} #todo: regex  
  end 
  def self.select_by_weight_more_than(pounds)
    students = DbApi.students
    selected = students.select{|student| pounds < student.pounds}
  end
end