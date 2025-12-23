# 真の約数の和
def divisors_sum(n)
  ret = 1
  m = n
  p = 2

  while p*p <= n
    k = 0
    while m % p == 0
      m /= p
      k += 1
    end
    ret *= (p**(k+1)-1)/(p-1)

    p += 1
  end

  if m == 1
    ret - n
  else
    ret*(m+1) - n
  end
end

N = 28123
abundants = []
(1..N).each do |i|
  if divisors_sum(i) > i
    abundants << i
  end
end
sum = []
abundants.repeated_combination(2) do |a, b|
  next if a+b > N
  sum << a+b
end

puts N*(N+1)/2 - sum.uniq.sum
