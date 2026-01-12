ans = 0
max = 0
File.readlines('099.txt').each.with_index(1) do |line, i|
  a, b = line.split(',').map(&:to_i)
  c = b*Math.log(a)
  if c > max
    max = c
    ans = i
  end
end
puts ans
