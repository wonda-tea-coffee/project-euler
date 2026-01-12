def f(n)
  ans = 0
  while n > 0
    ans += (n%10)**2
    n /= 10
  end
  ans
end

N = 10_000_000
ans = 0
memo89 = Set.new
memo1 = Set.new

(1...N).each do |n|
  m = n
  tmp = []
  while true
    if memo1.include?(m) || m == 1
      memo1.merge(tmp)
      break
    elsif memo89.include?(m) || m == 89
      memo89.merge(tmp)
      ans += 1
      break
    end

    m = f(m)
    tmp << m
  end
end

puts ans
