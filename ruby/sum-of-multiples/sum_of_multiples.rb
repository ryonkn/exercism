class SumOfMultiples
  def initialize(*numbers)
    @numbers = numbers
  end

  def to(limit)
    (1...limit).select {|i| @numbers.any? {|number| i % number == 0}}.sum
  end
end
