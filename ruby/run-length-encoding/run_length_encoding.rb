class RunLengthEncoding
  def self.encode(input)
    input
      .chars
      .chunk_while {|i, j| i == j }
      .to_a
      .map { |c| "#{c.size > 1 ? c.size : ''}#{c.first}" }
      .join
  end

  def self.decode(input)
    input
      .chars
      .chunk_while {|i, j| /\d+/ =~ i }
      .to_a
      .map(&:join)
      .map { |code| code.size == 1 ? code[-1] : code[-1] * code[0..-2].to_i }
      .join
  end
end

module BookKeeping
  VERSION = 3
end
