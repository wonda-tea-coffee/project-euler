def collatz(n)
  if n % 2 == 0
    n / 2
  else
    3 * n + 1
  end
end

ans = 0
maxlen = 0
memo = {}

(1..1_000_000).each do |i|
  j = i
  l = 1

  while j > 1
    if memo.include?(j)
      l += memo[j]
      break
    end

    j = collatz(j)
    l += 1
  end

  memo[i] = l

  if l > maxlen
    maxlen = l
    ans = i
  end
end

puts ans
