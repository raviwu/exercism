class Binary
  def self.to_decimal(binary)
    raise ArgumentError unless /^[0-1]+$/ =~ binary

    bases = binary.chars.reverse

    (0..bases.size - 1)
      .to_a
      .inject(0) { |sum, index| sum + bases[index].to_i * (2**index) }
  end
end

module BookKeeping
  VERSION = 3
end
