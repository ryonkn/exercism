class Bst
  attr_reader :data, :left, :right

  def initialize(number)
    @data = number
    @left = nil
    @right = nil
  end

  def insert(number)
    if number <= data 
      if left.nil?
        @left = self.class.new(number)
      else
        @left.insert(number)
      end
    else
      if right.nil?
        @right = self.class.new(number)
      else
        @right.insert(number)
      end
    end
  end

  def each(&block)
    left.each(&block) unless left.nil?
    yield data
    right.each(&block) unless right.nil?
  end
end
