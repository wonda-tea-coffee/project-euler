require 'prime'
g = Prime::EratosthenesGenerator.new
i = 0

while i < 10_001
  i += 1
  ans = g.next
end

puts ans
