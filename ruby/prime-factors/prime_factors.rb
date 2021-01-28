class PrimeFactors
  def self.of(number)
    factors = []
    factor = 2

    while number != 1
      while number % factor == 0
        factors << factor
        number /= factor
      end
      factor += 1
    end

    factors
  end
end
