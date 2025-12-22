# 1/3 < n/d < 1/2
# d/3 < n < d/2
ans = 0
N = 12000
(4..N).each do |d|
  a = (d/3.0).ceil
  b = d/2
  (a..b).each do |i|
    if d.gcd(i) == 1
      ans += 1
    end
  end
end
puts ans
