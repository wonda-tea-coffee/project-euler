def d(n)
  return 1 if n == 1
  ret = 1
  p = 2
  m = n

  while p*p <= n
    k = 0
    while m % p == 0
      m /= p
      k += 1
    end
    s = (p**(k+1)-1)/(p-1)
    if k > 0
      ret *= s
    end
    p += 1
  end

  ret *= m + 1 if m > 1

  ret - n
end

ans = 0
(1..10000).each do |i|
  e = d(i)
  next if i == e
  ans += i if i == d(e)
end
puts ans
