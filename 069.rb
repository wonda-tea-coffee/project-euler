require 'prime'

N = 1_000_000
phi = [1] * (N+1)
g = Prime::EratosthenesGenerator.new

while (p = g.next) < N
  q = p
  while q < N
    phi[q] *= p/(p-1).to_f
    q += p
  end
end

ans = 0
max = 0
(1..N).each do |n|
  if phi[n] > max
    max = phi[n]
    ans = n
  end
end
puts ans
