require 'rspec'
require './lib/course'
require './lib/student'
require './lib/gradebook'

RSpec.describe Gradebook do

    it "exists" do
      gradebook = Gradebook.new("Farnsworth")
      expect(gradebook).to be_instance_of(Gradebook)
    end

    it "stores courses" do
      gradebook = Gradebook.new("Farnsworth")
      course = Course.new("Calculus", 2)
      gradebook.add_course(course)
      expect(gradebook.courses.length).to eq 1
    end
end