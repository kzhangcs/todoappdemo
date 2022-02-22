class Student
  attr_accessor :student_id, :first_name, :last_name, :city, :state, :email, :gender, :pounds, :gpa, :taking_courses

  def initialize
    yield self if block_given?
  end

  def to_s
    "#{student_id} #{first_name}#"
  end