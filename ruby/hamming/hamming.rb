# hamming.rb

class Hamming
  def self.compute(input_a, input_b)
    input_a_arr = input_a.downcase.chars
    input_b_arr = input_b.downcase.chars

    raise ArgumentError unless input_a_arr.size == input_b_arr.size

    [input_a_arr, input_b_arr]
      .transpose
      .map(&:uniq)
      .keep_if { |e| e.size > 1 }
      .size
  end
end

module BookKeeping
  VERSION = 3 # Where the version number matches the one in the test.
end
