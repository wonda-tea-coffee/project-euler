di = 0
ans = 1
n = 1
t = 1
while di <= 1_000_000
  ns = n.to_s
  if di + ns.size >= t
    ans *= ns[t-di-1].to_i
    t *= 10
  end

  n += 1
  di += ns.size
end
puts ans
