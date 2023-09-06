require 'rspec'
require './lib/course'
require './lib/student'

RSpec.describe Course do
  it "exists" do
    course = Course.new("Calculus", 2)
    expect(course).to be_instance_of(Course)
  end

  it "has attributes" do
    course = Course.new("Calculus", 2)
    expect(course.name).to eq("Calculus")
    expect(course.capacity).to eq 2
  end

  it "starts with no students" do
    course = Course.new("Calculus", 2)
    expect(course.students).to eq([])
  end

  describe "#full? method" do
    it "compares course capacity to current enrollment" do
      course = Course.new("Calculus", 2)
      expect(course.full?).to eq false
      student1 = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Jordan", age: 29})
      course.enroll(student1)
      expect(course.full?).to eq false
      course.enroll(student2)
      expect(course.full?).to be true
    end
  end

  describe "#enroll method" do
    it "adds student objects to the students array" do
      course = Course.new("Calculus", 2)
      student1 = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Jordan", age: 29})
      course.enroll(student1)
      course.enroll(student2)
      expect(course.students).not_to be nil
      expect(course.students.length).to be 2
    end
  end
end
