# Write your code for the 'Luhn' exercise in this file. Make the tests in
# `luhn_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/luhn` directory.
class Luhn
  def self.valid?(numbers)
    nums = numbers.scan(/\S/)
    return false if nums.size == 1
    return false unless nums.all? { _1.match(/\d/) }

    nums.map(&:to_i).reverse.map.with_index { _2.even? ? _1 : (_1 * 2 > 9 ? _1 * 2 - 9 : _1 * 2) }.sum % 10 == 0
  end
end
