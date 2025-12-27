MOD = 10_000_000_000
ans = 1
7830457.times do
  ans = ans*2%MOD
end
puts (ans*28433+1)%MOD
