require('minitest/autorun')
require('minitest/rg')
require_relative('../classes_homework')

class Testclasses < MiniTest::Test
  def test_get_team_name
    team1 = SportsTeam.new("Scotland", ["Rob", "Alex"], "Pawel")
    assert_equal("Scotland", team1.team_name)
  end

  def test_get_team_players
    team1 = SportsTeam.new("Scotland", ["Rob", "Alex"], "Pawel")
    assert_equal(["Rob", "Alex"], team1.players)
  end

  def test_get_team_coach
    team1 = SportsTeam.new("Scotland", ["Rob", "Alex"], "Pawel")
    assert_equal("Pawel", team1.coach)
  end

  # def test_coach_name_change
  #   team1 = SportsTeam.new("Scotland", ["Rob", "Alex"], "Pawel")
  #   team1.change_coach("Chris")
  #   assert_equal("Chris", team1.coach)
  # end

  def test_coach_name_change
    team1 = SportsTeam.new("Scotland", ["Rob", "Alex"], "Pawel")
    team1.coach = "Chris"
    assert_equal("Chris", team1.coach)
  end

  def test_add_new_player
    team1 = SportsTeam.new("Scotland", ["Rob", "Alex"], "Pawel")
    new_player = "Catriona"
    team1.add_new_player(new_player)
    assert_equal(3, team1.players.length)
  end

  def test_check_for_player__player_found
    team1 = SportsTeam.new("Scotland", ["Rob", "Alex"], "Pawel")
    assert_equal(true, team1.check_for_player("Rob"))
  end

  def test_check_for_player__player_not_found
    team1 = SportsTeam.new("Scotland", ["Rob", "Alex"], "Pawel")
    assert_equal(false, team1.check_for_player("Nathan"))
  end

  def test_change_points__win
    team1 = SportsTeam.new("Scotland", ["Rob", "Alex"], "Pawel")
    team1.change_points("win")
    assert_equal(1, team1.points)
  end
end
