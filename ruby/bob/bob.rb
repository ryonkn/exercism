class Bob
  def self.hey(remark)
    remark = Remark.new(remark)

    return 'Fine. Be that way!' if remark.empty?
    return "Calm down, I know what I'm doing!" if remark.all_upper_alphabets? && remark.last_is_question?
    return 'Whoa, chill out!' if remark.all_upper_alphabets?
    return 'Sure.' if remark.last_is_question?

    'Whatever.'
  end
end

class Remark
  def initialize(remark)
    @remark = remark
  end

  def last_is_question?
    extract_chars.last == '?'
  end

  def extract_chars
    @remark.scan(/\S/)
  end

  def empty?
    extract_chars.empty?
  end

  def extract_alpabets
    extract_chars.select { _1.match(/[a-zA-Z]/) }
  end

  def include_alphabets?
    !extract_alpabets.empty?
  end

  def all_upper_alphabets?
    include_alphabets? && extract_alpabets.all? { _1.match(/[A-Z]/) }
  end
end
