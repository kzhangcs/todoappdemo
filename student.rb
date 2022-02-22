require_relative 'course.rb'

class Student
  attr_accessor :student_id, :first_name, :last_name, :city, :state, :email, :gender, :pounds, :gpa, :taking_courses

  def initialize
    yield self if block_given?
  end

  def to_s #todo: delete student_id
    "Name: #{first_name} #{last_name} (#{gender} from #{city}, #{state}) weight: #{pounds} GPA: #{gpa}
    Courses: #{taking_courses.map(&:to_s)}" #todo: clean up
    end
end


    # Courses: #{taking_courses}.map #{ |e| my_to_s(e) }.join(', ') << ']'"
