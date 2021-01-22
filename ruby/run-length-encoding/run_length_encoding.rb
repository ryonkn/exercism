class RunLengthEncoding
  def self.encode(input)
    input.split(//).chunk_while { _1 == _2 }.map { _1.size == 1 ? _1[0] : "#{_1.size}#{_1[0]}" }.join
  end

  def self.decode(input)
    input.scan(/(\d*)(.)/).map { _2 * (_1.empty? ? 1 : _1.to_i) }.join
  end
end
