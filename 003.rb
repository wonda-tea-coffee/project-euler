n = 600_851_475_143
k = 2
while k*k <= n
  while n % k == 0
    n /= k
  end
  k += 1
end
puts n
