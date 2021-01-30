class ETL
  def self.transform(input)
    output = {}
    input.each do |key, values|
      values.each do |value|
        output[value.downcase] = key
      end
    end
    output
  end
end
