class Student

  attr_accessor :name, :cohort

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def student_name(name)
    @name = name
  end

  def greet()
    return "I can talk!"
  end

  def language(favourite)
    return  "I love " + favourite 
  end


end