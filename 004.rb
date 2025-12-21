def palindrome?(s)
  s == s.chars.reverse.join
end

ans = 0

(100...1000).each do |i|
  (100...1000).each do |j|
    k = i * j
    next unless palindrome?(k.to_s)
    ans = k if ans < k
  end
end

puts ans
