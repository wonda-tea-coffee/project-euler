require 'prime'
N = 10_00_000
M = 4
c = 0
(1..N).each do |n|
  unless n.prime_division.size == M
    c = 0
    next
  end

  c += 1
  if c == M
    puts n-(M-1)
    break
  end
end
