class PhoneNumber
  def self.clean(number)
    number.gsub(/\D/, '').sub(/^1/, '')[/^([2-9]\d{2}){2}\d{4}$/]
  end
end
