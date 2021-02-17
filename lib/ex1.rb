
def solution(a, b)
  a = a.downcase.split(//)
  b = b.downcase.split(//)
  accum = 0

  if a.length == b.length
    a.uniq do |a_letter|
      if b.include?(a_letter) == false
        accum +=1
      end
    end

    b.uniq do |b_letter|
      if a.include?(b_letter) == false
        accum +=1
      end
    end
    return accum
  else
    if a.length != a.uniq.length
      accum += (a.length.to_i - a.uniq.length.to_i)
    end

    if b.length != b.uniq.length
      accum += (b.length.to_i - b.uniq.length.to_i)
    end

    a.uniq do |a_letter|
      if !b.include?(a_letter)
        accum +=1
      end
    end

    b.uniq do |b_letter|
      if !b.include?(b_letter)
        accum +=1
      end
    end
  end
  accum
end
