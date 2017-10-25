# grains.rb

class Grains
  VALID_RANGE = [*1..64].freeze
  @@grains = {}

  def self.square(number)
    raise ArgumentError unless VALID_RANGE.include? number

    @@grains[number] = 2 ** (number - 1)
    @@grains[number]
  end

  def self.total
    VALID_RANGE.each do |index|
      next if @@grains.dig(index)
      @@grains[index] = square(index)
    end

    @@grains.values.sum
  end
end

module BookKeeping
  VERSION = 1
end
