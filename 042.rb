triangles = Set.new
n = 1
while (t = n*(n+1)/2) <= 364 # = 26*14
  triangles.add(t)
  n += 1
end

ans = 0
File.read('042.txt').gsub('"', '').split(',').each do |word|
  s = word.codepoints.map{|c| c-64}.sum
  ans += 1 if triangles.include?(s)
end
puts ans
