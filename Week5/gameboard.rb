# GameBoard will match the user input and rate his performance.
class GameBoard
  def initialize
    @range = [0, 1, 2, 3, 4, 5, 6]
    @no_of_hits = 0
  end

  def set_locations_cells(locations)
    @numbers_to_guess = []
    locations.each { |index| @numbers_to_guess.push(@range[index]) }
  end

  def check_yourself(user_guess)
    if @numbers_to_guess.include?(user_guess.to_i)
      @no_of_hits += 1
      puts 'Hit'
      kill?
    else
      puts 'Miss'
    end
  end

  def kill?
    if @no_of_hits == 3
      puts 'End'
      'kill'
    end
  end
end
