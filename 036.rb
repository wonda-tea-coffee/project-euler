def palindrome?(s)
  s == s.chars.reverse.join
end

ans = 0
(1..1_000_000).each do |i|
  next unless palindrome?(i.to_s)
  next unless palindrome?(i.to_s(2))
  ans += i
end
puts ans
