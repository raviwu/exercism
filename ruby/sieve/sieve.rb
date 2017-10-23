require 'prime'

class Sieve
  @@cached_primes = []

  def initialize(number)
    @number = number
    check_and_chache_primes!
  end

  def primes
    cached_primes.select { |p| p <= @number }
  end

  private

  def cached_primes
    @@cached_primes
  end

  def check_and_chache_primes!
    (1..@number).to_a.each do |num|
      check_and_cache_prime(num)
    end
  end

  def check_and_cache_prime(number)
    return true if cached_primes.last.to_i >= number

    @@cached_primes << number if Prime.prime?(number)
  end
end

module BookKeeping
  VERSION = 1
end
