# Write your code for the 'Tournament' exercise in this file. Make the tests in
# `tournament_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/tournament` directory.

class Team
  attr_reader :name, :win, :draw, :loss

  def initialize(name)
    @name = name
    @win = 0
    @draw = 0
    @loss = 0
  end

  def add_win
    @win += 1
  end

  def add_draw
    @draw += 1
  end

  def add_loss
    @loss += 1
  end

  def mp
    win + draw + loss
  end

  def point
    win * 3 + draw
  end

  def <=>(other)
    (other.point <=> point).nonzero? || (name <=> other.name)
  end

  def output
    Formatter.call(name, mp, win, draw, loss, point)
  end
end

class Formatter
  def self.call(name, mp, win, draw, loss, point)
    format('%-30s | %02s | %02s | %02s | %02s | %02s', name, mp, win, draw, loss, point)
  end
end

class Tournament
  def self.tally(input)
    @teams = []
    input.each_line(chomp: true) do |line|
      next if line.empty?

      left, right, result = line.split(/;/)

      case result
      when 'win'
        team_find(left).add_win
        team_find(right).add_loss
      when 'draw'
        team_find(left).add_draw
        team_find(right).add_draw
      when 'loss'
        team_find(left).add_loss
        team_find(right).add_win
      end
    end

    output = []
    output << header
    @teams.sort.each do |team|
      output << team.output
    end
    output.join("\n") + "\n"
  end

  def self.header
    Formatter.call('Team', 'MP', 'W', 'D', 'L', 'P')
  end

  def self.team_find(name)
    team = @teams.find { |t| t.name == name }
    return team unless team.nil?

    team = Team.new(name)
    @teams.push team
    team
  end
end
