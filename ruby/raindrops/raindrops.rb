=begin
Write your code for the 'Raindrops' exercise in this file. Make the tests in
`raindrops_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/raindrops` directory.
=end
class Raindrops
  def self.convert(number)
    outputs = []
    outputs << "Pling" if number % 3 == 0
    outputs << "Plang" if number % 5 == 0
    outputs << "Plong" if number % 7 == 0
    outputs.size > 0 ? outputs.join : number.to_s
  end
end
