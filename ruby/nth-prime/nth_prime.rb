class Prime
  def self.nth(number)
    raise ArgumentError if number == 0

    i = 2
    loop do
      number -= 1 if prime?(i)
      break if number.zero?
      i += 1
    end
    i
  end

  def self.prime?(num)
    return true if num == 2
    return false if num % 2 == 0

    2.upto(num - 1) do |i|
      return false if num % i == 0
    end
    true
  end
end
