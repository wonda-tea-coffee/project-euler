a, b = 1, 1
sum = 0
while (c = a + b) < 4_000_000
  sum += c if c % 2 == 0
  a = b
  b = c
end
puts sum
