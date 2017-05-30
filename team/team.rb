class Team

  attr_reader :team_name, :players
  attr_accessor :coach, :points

  def initialize(team_name, players, coach, points)
    @team_name = team_name
    @players = players
    @coach = coach
    @points = points
  end

  def new_player(name)
    @players.push(name)
  end

#   def check_name(name)
#     for player in name
#       if player = name
#         return true
#       else
#         return false
#       end
#     end
#   end
# end

  def check_name(name)
    if @players.include?(name)
      return true
    else
      return false
    end
  end

  def result(result)
    if result == "win"
    @points += 3
    elsif result == "loss"
    @points += -1
    end
  end

end