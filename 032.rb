ans = Set.new
s = [(1..9), (10..99)]
e = [(1000..), (100..)]
(0...s.size).each do |i|
  s[i].each do |a|
    e[i].each do |b|
      c = a.to_s.chars + b.to_s.chars + (a*b).to_s.chars
      break if c.size > 9
      ans.add(a*b) if c.sort.uniq.join == '123456789'
    end
  end
end
puts ans.sum
