# grains.rb

class Grains
  VALID_RANGE = [*1..64].freeze

  def self.square(number)
    raise ArgumentError unless VALID_RANGE.include? number

    2**(number - 1)
  end

  def self.total
    VALID_RANGE.reduce(0) do |sum, number|
      sum + square(number)
    end
  end
end

module BookKeeping
  VERSION = 1
end
