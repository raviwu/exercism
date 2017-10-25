# nth_prime.rb

require 'prime'

class Prime
  @@primes = [2, 3, 5, 7]

  def self.is_prime(num)
    return false if num == 1
    return false if num.even? && num > 2
    return false if (num % 3).zero?
    return false if (num % 5).zero?

    [*(7..(Math.sqrt(num).to_i))].each do |factor|
      return false if (num % factor).zero?
    end

    num
  end

  def self.nth(num)
    raise ArgumentError unless num.positive?

    number = @@primes.last

    while @@primes.size < num
      @@primes << number + 1 if is_prime(number + 1)
      number += 1
    end

    @@primes[num - 1]
  end
end

module BookKeeping
  VERSION = 1
end
