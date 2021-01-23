class Array
  def accumulate
    result = []
    each { result << yield(_1) }
    result
  end
end
