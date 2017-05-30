require('minitest/autorun')
require_relative('../student')

class TestStudent < Minitest::Test

  def setup 
    @new_student = Student.new("Ciaran", 13)
  end 

  def test_student_name()
    assert_equal("Ciaran", @new_student.name)
  end

  def test_greeting
    assert_equal("I can talk!", @new_student.greet)
  end

  def test_language
    assert_equal("I love Ruby", @new_student.language("Ruby"))
  end


end