class PhoneNumber
  def self.clean(input)
    @@numbers = input.gsub(/\D/, '')

    return unless valid?

    purged_country_code
  end

  def self.purged_country_code
    has_country_code? ? @@numbers[1..-1] : @@numbers
  end

  def self.valid?
    valid_digit? && valid_area_code? && valid_country_code? && valid_exchange_code?
  end

  def self.valid_digit?
    [10, 11].include? @@numbers.size
  end

  def self.has_country_code?
    @@numbers.size == 11
  end

  def self.valid_country_code?
    return true unless has_country_code?

    @@numbers.start_with?('1')
  end

  def self.valid_area_code?
    has_country_code? ? @@numbers[1].match(/[2-9]/) : @@numbers[0].match(/[2-9]/)
  end

  def self.valid_exchange_code?
    has_country_code? ? @@numbers[4].match(/[2-9]/) : @@numbers[3].match(/[2-9]/)
  end
end

module BookKeeping
  VERSION = 2
end
