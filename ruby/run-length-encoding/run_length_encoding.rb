class RunLengthEncoding
  def self.encode(input)
    input
      .chars
      .chunk_while {|i, j| i == j }
      .to_a
      .map { |chunk| [chunk.size, chunk[-1]] }
      .flat_map { |chunk| chunk.drop_while { |c| c == 1 } }
      .join
  end

  def self.decode(input)
    input
      .chars
      .chunk_while {|i, j| /\d+/ =~ i }
      .to_a
      .map(&:join)
      .map { |chunk| [decode_chunk_size(chunk[0..-2]), chunk[-1]] }
      .map { |chunk| chunk.last * chunk.first }
      .join
  end

  def self.decode_chunk_size(number_string)
    number_string == '' ? 1 : number_string.to_i
  end
end

module BookKeeping
  VERSION = 3
end
