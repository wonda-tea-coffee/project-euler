set = Set.new
(2..100).each do |a|
  (2..100).each do |b|
    set.add(a**b)
  end
end
puts set.size
