class Bst
  attr_reader :data, :left, :right

  def initialize(number)
    @data = number
    @left = nil
    @right = nil
  end

  def insert(number)
    if number <= data
      left ? left.insert(number) : @left = self.class.new(number)
    else
      right ? right.insert(number) : @right = self.class.new(number)
    end
  end

  def each(&block)
    left&.each(&block)
    block&.call(data)
    right&.each(&block)

    enum_for(:each)
  end
end
