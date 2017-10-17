# rna_transacription.rb

class Complement
  CONVERSION_MAP = {
    C: :G,
    G: :C,
    T: :A,
    A: :U
  }

  def self.of_dna(input)
    converted = input
      .upcase
      .chars
      .map(&:to_sym)
      .map { |c| CONVERSION_MAP.dig(c) }
      .compact
      .join

    converted.length == input.length ? converted : ''
  end
end

module BookKeeping
  VERSION = 4
end
