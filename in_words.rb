class Fixnum
  def in_words_below_hundred
    numbers_words = {
        1 => 'one',
        2 => 'two',
        3 => 'three',
        4 => 'four',
        5 => 'five',
        6 => 'six',
        7 => 'seven',
        8 => 'eight',
        9 => 'nine',
        10 => 'ten',
        11 => 'eleven',
        12 => 'twelve',
        13 => 'thirteen',
        14 => 'fourteen',
        15 => 'fifteen',
        16 => 'sixteen',
        17 => 'seventeen',
        18 => 'eighteen',
        19 => 'nineteen',
        20 => 'twenty',
        30 => 'thirty',
        40 => 'forty',
        50 => 'fifty',
        60 => 'sixty',
        70 => 'seventy',
        80 => 'eighty',
        90 => 'ninety',
    }
    if self > 99
      "#{(self / 100).in_words_below_hundred} hundred #{(self - self / 100 * 100).in_words_below_hundred}"
    elsif self > 20
      "#{numbers_words[self / 10 * 10]} #{numbers_words[self - self / 10 * 10]}"
    else
      numbers_words[self]
    end
  end
end

class Integer
  def in_words
    numbers_words = {
        1 => 'one',
        2 => 'two',
        3 => 'three',
        4 => 'four',
        5 => 'five',
        6 => 'six',
        7 => 'seven',
        8 => 'eight',
        9 => 'nine',
        10 => 'ten',
        11 => 'eleven',
        12 => 'twelve',
        13 => 'thirteen',
        14 => 'fourteen',
        15 => 'fifteen',
        16 => 'sixteen',
        17 => 'seventeen',
        18 => 'eighteen',
        19 => 'nineteen',
        20 => 'twenty',
        30 => 'thirty',
        40 => 'forty',
        50 => 'fifty',
        60 => 'sixty',
        70 => 'seventy',
        80 => 'eighty',
        90 => 'ninety',
    }
    ten = 10
    thousand = ten**3
    notation = {
        thousand => 'thousand',
        thousand**2 => 'million',
        thousand**3 => 'billion',
        thousand**4 => 'trillion'
    }
    if self > 999
      order_of_magnitude = (self.to_s.length - 1)
      order_of_magnitude_thousands = order_of_magnitude / 3
      "#{(self / (thousand**order_of_magnitude_thousands)).in_words}" +
      " #{notation[thousand**order_of_magnitude_thousands]}" +
      " #{(self - self / (thousand**order_of_magnitude_thousands) * (thousand**order_of_magnitude_thousands)).in_words}"
    elsif self > 99
        "#{(self / 100).in_words_below_hundred} hundred #{(self - self / 100 * 100).in_words}"
    elsif self > 20
      "#{numbers_words[self / 10 * 10]} #{numbers_words[self - self / 10 * 10]}"
    else
      numbers_words[self]
    end
  end
end

p 123456789098765.in_words