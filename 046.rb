require 'prime'

N = 10_000
primes = Set.new
g = Prime::EratosthenesGenerator.new
g.next # 2を除外
while (temp = g.next) < N
  primes << temp
end

(2..(N+1)/2).each do |i|
  n = 2*i-1
  next if primes.include?(n)

  t = true
  primes.each do |p|
    break if p > n

    k = Math.sqrt((n-p)/2)
    if k == k.to_i
      t = false
      break
    end
  end

  if t
    puts n
    break
  end
end
