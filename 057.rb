ans = 0
a, b = 3, 2
999.times do
  ans += 1 if a.to_s.size > b.to_s.size
  c = a+2*b
  d = a+b
  a, b = c, d
end
puts ans
