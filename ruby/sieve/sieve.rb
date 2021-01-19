# Write your code for the 'Sieve' exercise in this file. Make the tests in
# `sieve_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/sieve` directory.
class Sieve
  def initialize(limit)
    @limit = limit
  end

  def primes
    lists = (2..@limit).map { [_1, 0] }.to_h

    while num = lists.find { _2.zero? }&.first
      lists[num] = 1
      (num * 2..@limit).step(num).each { lists[_1] = 2 }
    end

    lists.select { _2 == 1 }.keys
  end
end
