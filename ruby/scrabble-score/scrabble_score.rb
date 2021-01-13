# Write your code for the 'Scrabble Score' exercise in this file. Make the tests in
# `scrabble_score_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/scrabble-score` directory.
class Scrabble
  def self.score(word)
    new(word).score
  end

  def initialize(word)
    @word = word.to_s
  end

  def score
    letters = {}
    %w[A E I O U L N R S T].each { letters[_1] = 1 }
    %w[D G].each { letters[_1] = 2 }
    %w[B C M P].each { letters[_1] = 3 }
    %w[F H V W Y].each { letters[_1] = 4 }
    %w[K].each { letters[_1] = 5 }
    %w[J X].each { letters[_1] = 8 }
    %w[Q Z].each { letters[_1] = 10 }
    @word.upcase.scan(/\w/).map { letters[_1] }.sum
  end
end
