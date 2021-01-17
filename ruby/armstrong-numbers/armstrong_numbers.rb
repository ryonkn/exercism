# Write your code for the 'Armstrong Numbers' exercise in this file. Make the tests in
# `armstrong_numbers_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/armstrong-numbers` directory.
class ArmstrongNumbers
  def self.include?(number)
    digits = number.digits
    length = digits.length

    digits.sum { _1 ** length } == number
  end
end
