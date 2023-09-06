class Gradebook
  attr_reader :professor, :courses

  def initialize(professor)
    @professor = professor
    @courses = []
  end


end