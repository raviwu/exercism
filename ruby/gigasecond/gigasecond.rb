# gigasecond.rb

class Gigasecond
  def self.from(time)
    raise ArgumentError unless time.class == Time

    time + 10**9
  end
end

module BookKeeping
  VERSION = 6
end
