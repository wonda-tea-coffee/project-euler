def fact(n)
  ret = 1
  while n > 1
    ret *= n
    n -= 1
  end
  ret
end

puts fact(100).to_s.chars.map(&:to_i).sum
