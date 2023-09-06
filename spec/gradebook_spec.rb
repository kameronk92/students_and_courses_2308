require 'rspec'
require './lib/course'
require './lib/student'
require './lib/gradebook'

RSpec.describe Gradebook do

    it "exists" do
      gradebook = Gradebook.new("Farnsworth")
      expect(gradebook).to be_instance_of(Gradebook)
    end

    it "stores the instructor as a string" do
      gradebook = Gradebook.new("Farnsworth")
      expect(gradebook.instructor).to eq("Farnsworth")
    end

    it "can add courses" do
      gradebook = Gradebook.new("Farnsworth")
      course = Course.new("Calculus", 2)
      gradebook.add_course(course)
      expect(gradebook.courses.length).to eq 1
    end

    it "lists all students in its courses" do
      gradebook = Gradebook.new("Farnsworth")
      course = Course.new("Calculus", 2)
      gradebook.add_course(course)
      student1 = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Jordan", age: 29})
      course.enroll(student1)
      course.enroll(student2)
      require 'pry'; binding.pry
      gradebook.list_all_students
    end
end