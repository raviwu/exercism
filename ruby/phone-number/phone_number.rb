class PhoneNumber
  def self.clean(input)
    @@numbers = input.gsub(/\D/, '')

    match = @@numbers.match(/^1([2-9]\d{2}[2-9]\d{6})$/) || @@numbers.match(/^([2-9]\d{2}[2-9]\d{6})$/)

    return unless match

    @@purged_country_code = match[1]
  end
end

module BookKeeping
  VERSION = 2
end
