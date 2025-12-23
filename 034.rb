def f(n)
  ret = 0
  factorial = [1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880]

  while n > 0
    ret += factorial[n % 10]
    n /= 10
  end
  ret
end

ans = 0
(3..2540160).each do |n|
  ans += n if n == f(n)
end
puts ans
