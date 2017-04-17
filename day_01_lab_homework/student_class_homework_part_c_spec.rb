require("minitest/autorun")
require("minitest/rg")
require_relative("./student_class_homework_part_c.rb")

class ClassHomeworkTest < MiniTest::Test

  def setup
    @library = Library.new([{
      title: "breakfast_of_champions",
      rental_details: {
        student_name: "Sally",
        date: "01/01/17"
      }
    },
    {
      title: "if_on_a_winter_nights_a_traveller",
      rental_details: {
        student_name: "Ahmed",
        date: "02/02/17"
      }
    },
    {
      title: "v",
      rental_details: {
        student_name: "Mina",
        date: "03/03/17"
      }
    }])
  end


  def test_library_class_exists
    assert(Library)
  end

  def test_library_class_is_class
    assert_equal(Class, Library.class)
  end

  def test_list_all_the_books
    assert_equal([{
      title: "breakfast_of_champions",
      rental_details: {
        student_name: "Sally",
        date: "01/01/17"
      }
    },
    {
      title: "if_on_a_winter_nights_a_traveller",
      rental_details: {
        student_name: "Ahmed",
        date: "02/02/17"
      }
    },
    {
      title: "v",
      rental_details: {
        student_name: "Mina",
        date: "03/03/17"
      }
    }], @library.books)
  end

  def test_find_book_by_title
    assert_equal({
      title: "v",
      rental_details: {
        student_name: "Mina",
        date: "03/03/17"
      }
    }, @library.find_book_by_title("v"))
  end


 def test_get_rental_details_of_given_title
   assert_equal({
     student_name: "Sally",
     date: "01/01/17"
   }, @library.get_rental_details("breakfast_of_champions"))
 end

 def test_add_book_to_library
   @library.add_book_to_library("baudolino")
   assert_equal(true, @library.has_value?("baudolino"))
   assert_equal(true, @library.has_value?("v"))
 end


#WHY ON EARTH ISN'T THE BELOW FAILING!?

 def test_change_book_rental_details
   @library.change_book_rental_details("v", "Izzy", "05/05/2017")

   assert_equal({
     student_name: "Izzy",
     date: "05/05/17"
     }, get_rental_details("v"))
 end


end
