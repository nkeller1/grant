

  def soulation(a)
    sorted_array = a.select do |x|
      x >= 1
    end.sort.uniq
    accum = 1
    return accum if sorted_array.empty?

    sorted_array.each do |num|
      if accum < num
        return accum
      end
      accum += 1
    end
    accum
  end
