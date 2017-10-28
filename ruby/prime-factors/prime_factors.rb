require 'prime'

class PrimeFactors
  def self.for(number)
    @@number = number
    @@factors = []

    extract_factor
  end

  def self.extract_factor
    return @@factors if @@number == 1

    Prime.lazy.cycle do |prime|
      if @@number % prime == 0
        @@factors << prime
        @@number = @@number / prime
        break
      end
    end

    extract_factor
  end
end
