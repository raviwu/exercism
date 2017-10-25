# accumulate.rb

class Array
  def accumulate(&block)
    accumulate_array = []

    for i in 0...size
      accumulate_array[i] = block ? yield(at(i)) : at(i)
    end

    accumulate_array
  end
end

module BookKeeping
  VERSION = 1
end
