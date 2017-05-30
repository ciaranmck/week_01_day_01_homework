require('minitest/autorun')
require('minitest/rg')
require_relative('../library')

class TestLibrary < Minitest::Test

def setup 
  @library = Library.new([{
    title: "Lord of The Rings",
     rental_details: {student_name: "Ciaran", date: "29/05/17"}
    },
    {title: "Harry Potter"},
    rental_details: {student_name: "John", date: "30/05/17"
      }])
end

def test_list_all
  assert_equals(@library.list_all, @library)
end







end