ans = 1
i = 3
while i <= 1001
  ans += 4*i**2 - 6*i + 6
  i += 2
end
puts ans
