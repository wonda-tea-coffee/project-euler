ans = 0
N = 1_000_000
diff = N
(1..N).each do |d|
  n = (3*d-1)/7
  next if d.gcd(n) > 1
  e = (3*d-7*n)/(7*d).to_f
  if e < diff
    diff = e
    ans = n
  end
end
puts ans
