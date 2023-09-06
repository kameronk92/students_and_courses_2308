class Student
  attr_reader :name, :age, :scores, :grade

  def initialize(student_data)
    @name = student_data[:name]
    @age = student_data[:age]
    @scores =[]
    @grade = grade
  end

  def log_score(score)
    @scores << score
  end

  def grade
    if @scores != []
      @grade = @scores.sum/@scores.size
    end
  end

end
