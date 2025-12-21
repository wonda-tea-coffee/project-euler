require 'prime'

g = Prime::EratosthenesGenerator.new
ans = 0
while (p = g.next) < 2_000_000
  ans += p
end
puts ans
