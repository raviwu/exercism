# roman_numerals.rb

class Integer
  def to_roman
    [
      [:thousands, self / 1000],
      [:hundreds, (self / 100) % 10],
      [:tens, (self % 100) / 10],
      [:ones, self % 10]
    ].map do |distribution|
      num_converted_from(roman_symbols[distribution.first])[distribution.last]
    end.join
  end

  private

  def roman_convertable?
    positive? && self < 5_000
  end

  def roman_symbols
    {
      thousands: { 1 => 'M', 5 => 'U', 10 => 'U' },
      hundreds: { 1 => 'C', 5 => 'D', 10 => 'M' },
      tens: { 1 => 'X', 5 => 'L', 10 => 'C' },
      ones: { 1 => 'I', 5 => 'V', 10 => 'X' }
    }
  end

  def num_converted_from(symbols)
    {
      0 => '',
      1 => symbols[1],
      2 => symbols[1] * 2,
      3 => symbols[1] * 3,
      4 => symbols[1] + symbols[5],
      5 => symbols[5],
      6 => symbols[5] + symbols[1],
      7 => symbols[5] + (symbols[1] * 2),
      8 => symbols[5] + (symbols[1] * 3),
      9 => symbols[1] + symbols[10]
    }
  end
end

module BookKeeping
  VERSION = 2
end
