# leap.rb

class Year
  def self.leap?(year)
    (year % 400).zero? || ((year % 4).zero? && !(year % 100).zero?)
  end
end

module BookKeeping
  VERSION = 3
end
