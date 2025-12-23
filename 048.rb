M = 10_000_000_000

def power(n, k)
  ret = 1
  k.times do
    ret = ret * n % M
  end
  ret
end

ans = 0
(1..1000).each do |n|
  ans = (ans + power(n, n)) % M
end
puts ans
