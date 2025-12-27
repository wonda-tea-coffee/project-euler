def reversible?(s)
  s == s.chars.reverse.join
end

def lychrel?(n)
  cnt = 1
  m = n
  while cnt <= 49
    m += m.to_s.reverse.to_i
    cnt += 1
    return false if reversible?(m.to_s)
  end

  true
end

ans = 0
(1...10000).each do |n|
  ans += 1 if lychrel?(n)
end
puts ans
