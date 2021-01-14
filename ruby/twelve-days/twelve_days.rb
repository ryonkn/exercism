# Write your code for the 'Twelve Days' exercise in this file. Make the tests in
# `twelve_days_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/twelve-days` directory.

class TwelveDays
  def self.song
    lyrics = [
      ['first', 'a Partridge in a Pear Tree'],
      ['second', 'two Turtle Doves'],
      ['third', 'three French Hens'],
      ['fourth', 'four Calling Birds'],
      ['fifth', 'five Gold Rings'],
      ['sixth', 'six Geese-a-Laying'],
      ['seventh', 'seven Swans-a-Swimming'],
      ['eighth', 'eight Maids-a-Milking'],
      ['ninth', 'nine Ladies Dancing'],
      ['tenth', 'ten Lords-a-Leaping'],
      ['eleventh', 'eleven Pipers Piping'],
      ['twelfth', 'twelve Drummers Drumming']
    ]

    lyrics.map.with_index { |(number, _), index|
      text = "On the #{number} day of Christmas my true love gave to me: "
      text += index.downto(1).map { lyrics[_1][1] }.join(', ') + ', and ' if index > 0
      text += "#{lyrics[0][1]}.\n"
    }.join("\n")
  end
end
