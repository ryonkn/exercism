class Array
  def keep
    map {_1 if yield(_1)}.compact
  end

  def discard(...)
    self - keep(...)
  end
end
