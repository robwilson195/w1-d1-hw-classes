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

class SportsTeam

  attr_reader :team_name, :players, :points
  attr_accessor :coach

  def initialize(team_name, players, coach)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = 0
  end

  # def team_name
  #   return @team_name
  # end
  #
  # def players
  #   return @players
  # end
  #
  # def coach
  #   return @coach
  # end
  #
  # def change_coach(new_coach)
  #   @coach = new_coach
  # end

  def add_new_player(new_player)
    @players << new_player
  end

  def check_for_player(name)
    for player in @players
      return true if player == name
    end
    return false
  end

  def change_points(result)
    @points += 1 if result == "win"
    @points -= 1 if result == "loss"
  end

end
