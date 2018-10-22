class CodeclanStudent
  def initialize(name, cohort)
    @name = name
    @cohort = cohort
  end

  def name
    return @name
  end

  def cohort
    return @cohort
  end

  def update_student_name(new_name)
    @name = new_name
  end

  def update_cohort(new_cohort)
    @cohort = new_cohort
  end

  def speak()
    return "My name is #{@name}"
  end

  def say_favourite_language(language)
    return "I love #{language}"
  end
end
