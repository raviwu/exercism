# difference_of_squares.rb

class Squares
  @@cached_squares = {}

  def initialize(number)
    @numbers = (1..number).to_a

    @number_squares ||= @numbers.map do |num|
      cached_square_of(num) || cache_square_of(num, num * num)
    end
  end

  def square_of_sum
    @square_of_sum ||= sum * sum
  end

  def sum_of_squares
    @sum_of_squares ||= @number_squares.sum
  end

  def difference
    (square_of_sum - sum_of_squares).abs
  end

  private

  def cached_square_of(number)
    @@cached_squares[number]
  end

  def cache_square_of(number, result)
    @@cached_squares[number] = result
    result
  end

  def sum
    @sum ||= @numbers.sum
  end
end

module BookKeeping
  VERSION = 4
end
