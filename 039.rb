memo = Hash.new(0)
N = 1_000
ans = 0
max = 0
(1..300).each do |a|
  (a..).each do |b|
    c = Math.sqrt(a**2 + b**2)
    break if a+b+c > N

    next if c != c.to_i
    p = a+b+c.to_i
    memo[p] += 1
    if memo[p] > max
      ans = p
      max = memo[p]
    end
  end
end
puts ans
