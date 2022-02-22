require_relative 'student' 
require_relative 'course' 
require 'yaml'

class DbApi  

  @@students =   YAML::load_file('university_db.yml')

  # def initializer()
  #   @@students =  YAML::load_file('university_db.yml')
  # end

  def self.students #class method
    @@students
  end

  def self.select_by_gender (gender)
    students2 = DbApi.students
    p students2[0]
    selected = students2.select{|student| gender === student.gender}
  end
  # def self.select_by_first_name (first_name) ... end 
  # def self.select_by_last_name (last_name) ... end 
  # def self.select_by_weight_more_than(pounds) ... end
end