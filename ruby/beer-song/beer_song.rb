class BeerSong
  def self.recite(id, count)
    count.times.map do |i|
      first = (id - i) >= 0 ? id - i : 99
      second = (id - i - 1) >= 0 ? id - i - 1 : 99
      lyric_first(first) + lyric_second(second)
    end.join("\n")
  end

  def self.lyric_first(id)
    if id.zero?
      "No more bottles of beer on the wall, no more bottles of beer.\n"
    else
      "#{bottles(id)} of beer on the wall, #{bottles(id)} of beer.\n"
    end
  end

  def self.lyric_second(id)
    if id.zero?
      "Take it down and pass it around, no more bottles of beer on the wall.\n"
    elsif id == 99
      "Go to the store and buy some more, 99 bottles of beer on the wall.\n"
    else
      "Take one down and pass it around, #{bottles(id)} of beer on the wall.\n"
    end
  end

  def self.bottles(id)
    id == 1 ? '1 bottle' : "#{id} bottles"
  end
end
