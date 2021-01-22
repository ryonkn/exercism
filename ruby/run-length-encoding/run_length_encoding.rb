class RunLengthEncoding
  def self.encode(input)
    input.split(//).chunk_while { _1 == _2 }.map { _1.size == 1 ? _1[0] : "#{_1.size}#{_1[0]}" }.join
  end

  def self.decode(input)
    output = input.scan(/\d*./).map do
      mo = _1.match(/(\d*)(.)/)
      count = mo[1].empty? ? 1 : mo[1].to_i
      mo[2] * count
    end
    output.join
  end
end
