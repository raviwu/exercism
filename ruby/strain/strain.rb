class Array
  def keep(&block)
    map do |element|
      yield(element) ? element : nil
    end.compact
  end

  def discard(&block)
    map do |element|
      yield(element) ? nil : element
    end.compact
  end
end