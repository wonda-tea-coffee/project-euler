ans = 0
(9182..9999).each do |a|
  b = a.to_s + (a*2).to_s
  if b.chars.sort.uniq.join == '123456789'
    ans = [ans, b.to_i].max
  end
end
puts ans
