require("minitest/autorun")
require("minitest/rg")
require_relative("./student_class_homework_part_a.rb")

class ClassHomeworkTest < MiniTest::Test

  def setup

    @student_1 = Student.new("Socrates", 1)
    @student_2 = Student.new("Plato", 2)

  end


  def test_student_class_exists
    assert(@student_1)
  end

  def test_student_class_is_a_class
    assert_equal(Student, @student_1.class)
  end

  def test_student_name_getter
    assert_equal("Socrates", @student_1.get_student_name)
  end


  def test_student_name_getter_not_hardcoded
    assert_equal("Plato", @student_2.get_student_name)
  end

  def test_student_cohort_getter
    assert_equal(1, @student_1.get_student_cohort)
  end

  def test_student_cohort_getter_not_hardcoded
    assert_equal(2, @student_2.get_student_cohort)
  end

  def test_student_name_setter
    assert_equal("Socrates Rex", @student_1.rename_student("Socrates Rex"))
  end

  def test_student_cohort_setter
    assert_equal(2, @student_1.set_student_cohort(2))
  end

  def test_if_student_can_talk
    assert(@student_1.talk)
  end

  def test_if_student_can_love_a_language
    assert_equal("I love Ruby", @student_1.whaddya_think_of("Ruby"))
  end

  def test_if_student_can_love_a_language_not_hardcoded
    assert_equal("I love Java", @student_2.whaddya_think_of("Java"))
  end



end
