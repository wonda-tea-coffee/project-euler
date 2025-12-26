(144..).each do |n|
  h = n*(2*n-1)
  p = (Math.sqrt(24*h+1)+1)/6
  next if p != p.to_i
  puts h
  break
end
