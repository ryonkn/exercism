=begin
Write your code for the 'Hamming' exercise in this file. Make the tests in
`hamming_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/hamming` directory.
=end
class Hamming
  def self.compute(source, target)
    raise ArgumentError if source.length != target.length
    source.chars.zip(target.chars).count { _1 != _2 }
  end
end
