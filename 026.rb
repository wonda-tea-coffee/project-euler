# 1/dの小数部の循環節の長さ
def len(d)
  ret = 0
  a = 1
  mod = [a]
  while true
    while a < d
      a *= 10
    end
    a %= d
    if a == 0
      return 0
    elsif mod.index(a).nil?
      mod << a
    else
      return mod.size - mod.index(a)
    end
  end
end

maxlen = 0
ans = 0
(2..999).each do |d|
  if (l=len(d)) > maxlen
    ans = d
    maxlen = l
  end
end
puts ans
