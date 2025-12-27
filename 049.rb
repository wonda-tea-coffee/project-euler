require 'prime'

primes = []
(1000..9999).each do |n|
  primes << n if n.prime?
end
(0...primes.size).each do |pi|
  a = primes[pi]
  ((pi+1)...primes.size).each do |pj|
    b = primes[pj]
    next unless a.to_s.chars.sort.join == b.to_s.chars.sort.join

    k = b-a
    c = b+k
    if 1000 <= c && c < 10000 && c.prime? && b.to_s.chars.sort.join == c.to_s.chars.sort.join
      puts "#{a}#{b}#{c}"
    end
  end
end
