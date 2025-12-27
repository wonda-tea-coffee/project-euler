require 'prime'
N = 1_000_000
g = Prime::EratosthenesGenerator.new
primes = []
while (p = g.next) < N
  primes << p
end
psize = primes.size
ans = 0
max = 0
(0...psize).each do |pi|
  qi = pi
  sum = 0
  while qi < psize && sum < N
    sum += primes[qi]
    qi += 1
    if sum.prime? && qi-pi+1 > max
      max = qi-pi+1
      ans = sum
    end
  end
end
puts ans
