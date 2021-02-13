class Crypto
  def initialize(plaintext)
    @plaintext = plaintext
  end

  def ciphertext
    chars = @plaintext.downcase.scan(/\w/)

    length = chars.length.zero? ? 1 : chars.length

    columuns = (length**(1 / 2.0)).ceil
    rows = (length / columuns.to_f).ceil

    chars.concat([' '] * (columuns * rows - length))
    chars.each_slice(columuns).to_a.transpose.map(&:join).join(' ')
  end
end
