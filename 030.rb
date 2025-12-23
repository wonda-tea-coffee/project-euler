def f(n)
  dsum = 0
  m = n
  while m > 0
    dsum += (m % 10)**5
    m /= 10
  end
  dsum == n
end

ans = 0
(10..354294).each do |n|
  ans += n if f(n)
end
puts ans
