class Course
  attr_accessor :course_name, :course_id

  def initialize(course_id, course_name)
    @course_id = course_id
    @course_name = course_name
  end

  def to_s
    "#{course_id} - #{course_name}"
  end
end