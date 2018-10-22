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

class Library

  attr_reader :books

  def initialize(books)
    @books = books
  end

  def book_info(book_name)
    for book in @books
      return book if book.title == book_name
    end
    return nil
  end

  def find_rental_details(book_name)
    for book in @books
      return book.rental_details if book.title == book_name
    end
    return nil
  end

  def check_for_book(name)
    for book in @books
      return true if book.title == name
    end
    return false
  end

  def add_book_to_library(book_title)
    @books << Book.new(book_title, "", "")
  end

  def edit_rental_details(book_title, new_renter, new_date)
    for book in @books
      if book.title == book_title
        # This section suggests that the book class can be defined better.
        book.rental_details[:student_name] = new_renter
        # p book.student_name
        book.student_name = new_renter
        book.rental_details[:date] = new_date
        # p book.date
        book.date = new_date
      end
    end
  end
end


class Book

  attr_reader :title, :rental_details
  attr_accessor :student_name, :date

  def initialize(title, student_name, date)
    @title = title
    @student_name = student_name
    @date = date
    @rental_details = {
      student_name: @student_name,
      date: @date
    }
  end

end
