require("minitest/autorun")
require("minitest/rg")
require_relative("./student_class_homework_part_b.rb")

class ClassHomeworkTest < MiniTest::Test

  def setup



  end


  def test_sportsteam_class_exists
    assert(SportsTeam)
  end



end
