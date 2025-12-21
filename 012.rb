def f(n)
  ret = 1
  d = 2
  m = n
  while d*d <= n
    c = 0
    while m % d == 0
      m /= d
      c += 1
    end
    ret *= c + 1
    d += 1
  end

  if m == 1
    ret
  else
    ret * 2
  end
end

(1..).each do |i|
  n = i*(i+1)/2
  if f(n) > 500
    puts n
    break
  end
end
