require 'prime'

[8, 7, 5, 4, 2, 1].each do |n|
  ans = []
  (1..n).to_a.permutation.each do |perm|
    m = perm.join.to_i
    next unless m.prime?
    ans << m
  end
  next if ans.size == 0
  puts ans.max
  break
end
