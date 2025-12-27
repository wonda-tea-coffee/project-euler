ans = 0
(1..100).each do |a|
  (1..100).each do |b|
    ans = [ans, (a**b).to_s.chars.map(&:to_i).sum].max
  end
end
puts ans
