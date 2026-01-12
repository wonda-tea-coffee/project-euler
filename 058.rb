require 'prime'
primes = Set.new
n = 3
while true
  m = n**2
  (1..3).each do |i|
    p = m-(n-1)*i
    primes.add(p) if p.prime?
  end

  a = 2*(n-1)+1
  b = primes.size.to_f

  break if b/a < 0.1

  n += 2
end
puts n
