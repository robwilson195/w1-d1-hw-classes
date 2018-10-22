require('minitest/autorun')
require('minitest/rg')
require_relative('../classes_homework')

class Testclasses < MiniTest::Test

  def test_student_name
    student1 = CodeclanStudent.new("Alex", "E26")
    assert_equal("Alex", student1.name)
  end

  def test_student_cohort
    student1 = CodeclanStudent.new("Alex", "E26")
    assert_equal("E26", student1.cohort)
  end

  def test_update_student_name
    student1 = CodeclanStudent.new("Alex", "E26")
    student1.update_student_name("Rob")
    assert_equal("Rob", student1.name)
  end

  def test_update_cohort
    student1 = CodeclanStudent.new("Alex", "E26")
    student1.update_cohort("E23")
    assert_equal("E23", student1.cohort)
  end

  def test_speak
    student1 = CodeclanStudent.new("Alex", "E26")
    assert_equal("My name is Alex", student1.speak())
  end

  def test_say_favourite_language
    student1 = CodeclanStudent.new("Alex", "E26")
    assert_equal("I love Ruby", student1.say_favourite_language("Ruby"))
  end

  def test_get_team_name
    team1 = SportsTeam.new("Scotland", ["Rob", "Alex"], "Pawel")
    assert_equal("Scotland", team1.name)
  end

  def test_get_team_players
    team1 = SportsTeam.new("Scotland", ["Rob", "Alex"], "Pawel")
    assert_equal(["Rob", "Alex"], team1.players)
  end

  def test_get_team_coach
    team1 = SportsTeam.new("Scotland", ["Rob", "Alex"], "Pawel")
    assert_equal("Pawel", team1.coach)
  end
end
