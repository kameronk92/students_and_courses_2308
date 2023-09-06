class Gradebook
  attr_reader :instructor, :courses

  def initialize(instructor)
    @instructor = instructor
    @courses = []
  end

  def add_course(course)
    @courses << course
  end

  def list_all_students
    list_all_students = {}
      list_all_students["course"] = courses
      list_all_students["student"] = courses.student
  end
end