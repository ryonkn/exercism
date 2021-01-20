class Prime
  def self.nth(number)
    raise ArgumentError if number == 0

    i = 1
    while number.nonzero?
      i += 1
      number -= 1 if prime?(i)
    end
    i
  end

  def self.prime?(num)
    return true if num == 2
    return false if num % 2 == 0

    3.step(num - 1, 2) do |i|
      return false if num % i == 0
    end
    true
  end
end
