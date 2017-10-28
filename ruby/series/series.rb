class Series
  def initialize(input)
    @series = input.chars
  end

  def slices(qty)
    raise ArgumentError if qty > @series.size

    @series.map.with_index do |char, index|
      @series[index...index+qty].join
    end.keep_if { |chunk| chunk.length == qty }
  end
end
