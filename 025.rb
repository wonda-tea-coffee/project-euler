a, b, i = 1, 1, 2
while true
  c = a + b
  i += 1

  if c.to_s.size == 1000
    puts i
    break
  end

  a = b
  b = c
end
