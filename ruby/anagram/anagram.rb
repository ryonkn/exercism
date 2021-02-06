class Anagram
  def initialize(detector)
    @detector = detector.downcase
  end

  def match(words)
    words.reject { _1.downcase == @detector }.select { _1.downcase.chars.sort == @detector.chars.sort }
  end
end
