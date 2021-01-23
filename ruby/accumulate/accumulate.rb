class Array
  def accumulate
    map { yield _1 }
  end
end
