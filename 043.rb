def f(ns)
  [2, 3, 5, 7, 11, 13].each.with_index(1) do |p, pi|
    ci = ns[pi..pi+2].to_i
    return false if ci % p > 0
  end
  true
end

ans = 0
a = []
(6..58).each do |i|
  b = 17*i
  next unless b.to_s.chars.uniq.size == 3
  a << b.to_s
end
a.each do |ai|
  ((?0..?9).to_a - ai.chars).permutation.each do |perm|
    c = perm.join + ai
    ans += c.to_i if f(c)
  end
end
puts ans
