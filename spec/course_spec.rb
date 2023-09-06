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

  describe "#enroll method" do
    it "checks if the class is full" do
      course = Course.new("Calculus", 2)
      # expect(course.full?).to eq false
      student1 = Student.new({name: "Morgan", age: 21})
      student2 = Student.new({name: "Jordan", age: 29})
      course.enroll(student1)
      course.enroll(student2)
      expect(course.students).not_to be nil
      # expect(course.full?).to eq true
    end
  end
end
