class Student

  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def get_student_name
    return @name
  end

  def get_student_cohort
    return @cohort
  end

  def rename_student(new_name)
    @name = new_name
  end

  def set_student_cohort(new_cohort)
    @cohort = new_cohort
  end

  def talk
    return "True knowledge exists in knowing that you know nothing."
  end

  def whaddya_think_of(word)
    return "I love #{word}"
  end


end
