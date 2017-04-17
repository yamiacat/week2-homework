require("minitest/autorun")
require("minitest/rg")
require_relative("./student_class_homework_part_a.rb")

class ClassHomeworkTest < MiniTest::Test

  def setup



  end

  def test_student_class_has_name
    assert_same(Student)
  end







end
